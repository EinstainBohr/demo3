import QtQuick 2.12
import FileHelper 1.0

Item {
    id: parser
    property var commandLineArguments: Qt.application.arguments
    property bool androidMode: false

    // Preset
    property bool presetEntrylevel: false
    property bool presetMidrange: true
    property bool presetHighend: false

    // Target
    property bool targetEmbedded: false
    property bool targetDesktop: true

    // Mode
    property bool modeDemo: false
    property bool modeBenchmark: false
    property bool modeNormal: true

    // Speed
    property int demoSpeed: 120000

    // Automatic benchmark modes
    property bool autoModeEnabled: false
    property bool autoModel: false
    property bool autoTexture: false
    property bool autoLight: false
    property bool autoModelCount: false
    property bool autoLightCount: false

    // Scripted benchmark mode
    property bool scriptModeEnabled: false
    property url scriptFile: ""

    // Report style
    property bool reportSingle: true

    // Other parameters to be read from the outside
    property bool quitAfter: false

    signal parsingDone
    signal startBenchmark

    // Usage: BenchmarkDemo <argument> <value>
    // For example: 'BenchmarkDemo --mode demo'
    //
    // Supported arguments:
    //
    // --help, -?   Prints out usage.
    // --mode       The startup mode. Can be one of: [ normal, demo, benchmark ].
    //              Mode is 'normal' by default.
    //              Normal mode will run with the configuration UI enabled.
    //              Demo mode will run continuously in the demo mode and will not generate benchmark
    //              log file. It also has the configuration UI disabled. Demo mode runs with
    //              highest settings if both '--target desktop' and '--preset highend' are set.
    //              There are no separate 'entrylevel' settings available, it will run as 'midrange'
    //              at the minimum.
    //              Benchmark mode will run the benchmark measurement in the given preset and
    //              target configuration. It also has the configuration UI disabled.
    // --preset     A preset for a certain level HW. Can be one of: [ entrylevel, midrange, highend ].
    //              Preset is 'midrange' by default.
    // --target     The target environment. Can be one of: [ embedded, desktop ].
    //              Target is 'desktop' by default.
    // --speed      Only used in demo mode. Determines the speed at which the animation loop is run.
    //              Can be one of: [ slow, normal, fast, veryfast ]. Speed is 'normal' by default.
    // --automatic  Only used in benchmark mode. Defines a set of benchmarks to be run one after
    //              another.
    //              Can be one of: [ model, modelcount, light, lightcount, texture ].
    //              model and modelcount can be specified at the same time
    //              [ --automatic model --automatic modelcount ], as well as light
    //              and lightcount [ --automatic light --automatic lightcount ]. Preset affects the
    //              maximum model complexity, as well as the maximum number of lights and models.
    //              Cannot be used together with 'testset'.
    // --testset    Only used in benchmark mode. Value is a path to the JSON file containing the
    //              tests to be run. For example [ --testset /testscripts/exampletestset.json ].
    //              Cannot be used together with 'automatic'.
    // --report     Only used in benchmark mode. Determines the report file style, either combining
    //              each test result into a single file, or saving each one into a separate file.
    //              'Single' style filename begins with the test script filename.
    //              Can be one of: [ single, multi ]. Report is 'single' by default.

    Component.onCompleted: {
        if (androidMode) {
            // Force midrange embedded mode
            parser.presetMidrange = true;
            parser.targetDesktop = false;
            parser.targetEmbedded = true;
        } else if (commandLineArguments.length > 1) {
            if (commandLineArguments[1] === "-?" || commandLineArguments[1] === "--help") {
                // Print out help
                printHelpAndQuit();
            } else {
                // Handle arguments
                for (var i = 1; i < commandLineArguments.length; i += 2) {
                    switch (commandLineArguments[i]) {
                    case "--preset":
                        parser.presetMidrange = false;
                        switch (commandLineArguments[i + 1]) {
                        case "entrylevel":
                            parser.presetEntrylevel = true;
                            break;
                        case "midrange":
                            parser.presetMidrange = true;
                            break;
                        case "highend":
                            parser.presetHighend = true;
                            break;
                        default:
                            printHelpAndQuit();
                        }
                        break;
                    case "--target":
                        parser.targetDesktop = false;
                        switch (commandLineArguments[i + 1]) {
                        case "embedded":
                            parser.targetEmbedded = true;
                            break;
                        case "desktop":
                            parser.targetDesktop = true;
                            break;
                        default:
                            printHelpAndQuit();
                        }
                        break;
                    case "--mode":
                        parser.modeNormal = false;
                        switch (commandLineArguments[i + 1]) {
                        case "demo":
                            parser.modeDemo = true;
                            break;
                        case "benchmark":
                            parser.modeBenchmark = true;
                            break;
                        case "normal":
                            parser.modeNormal = true;
                            break;
                        default:
                            printHelpAndQuit();
                        }
                        break;
                    case "--speed":
                        switch (commandLineArguments[i + 1]) {
                        case "slow":
                            parser.demoSpeed = 240000;
                            break;
                        case "normal":
                            parser.demoSpeed = 120000;
                            break;
                        case "fast":
                            parser.demoSpeed = 60000;
                            break;
                        case "veryfast":
                            parser.demoSpeed = 30000;
                            break;
                        default:
                            printHelpAndQuit();
                        }
                        break;
                    case "--automatic":
                        autoModeEnabled = true;
                        switch (commandLineArguments[i + 1]) {
                        case "model":
                            parser.autoModel = true;
                            break;
                        case "modelcount":
                            parser.autoModelCount = true;
                            break;
                        case "light":
                            parser.autoLight = true;
                            break;
                        case "lightcount":
                            parser.autoLightCount = true;
                            break;
                        case "texture":
                            parser.autoTexture = true;
                            break;
                        default:
                            printHelpAndQuit();
                        }
                        break;
                    case "--testset":
                        if (!commandLineArguments[i + 1]) {
                            printHelpAndQuit();
                        } else {
                            scriptModeEnabled = true;
                            // Check if the file exists
                            scriptFile = "file:" + commandLineArguments[i + 1];
                            fileChecker.source = scriptFile;
                            if (fileChecker.read() === "")
                                Qt.callLater(Qt.quit); // fileChecker prints a warning if file is not found
                        }
                        break;
                    case "--report":
                        switch (commandLineArguments[i + 1]) {
                        case "single":
                            parser.reportSingle = true;
                            break;
                        case "multi":
                            parser.reportSingle = false;
                            break;
                        default:
                            printHelpAndQuit();
                        }
                        break;
                    default:
                        printHelpAndQuit();
                    }
                }
            }
            // Do not allow all automatic benchmark combinations
            if (((parser.autoModel || parser.autoModelCount)
                 && (parser.autoLight || parser.autoLightCount || parser.autoTexture))
                    || ((parser.autoLight || parser.autoLightCount)
                        && (parser.autoModel || parser.autoModelCount || parser.autoTexture))) {
                printHelpAndQuit();
            }
            // Do not allow both --testset and --automatic
            if (autoModeEnabled && scriptModeEnabled)
                printHelpAndQuit();
        }
        // Only allow single report style if in benchmark mode
        parser.reportSingle = parser.modeBenchmark ? parser.reportSingle : false;

        createConfig();
    }

    function printHelpAndQuit() {
        console.log("
Usage: BenchmarkDemo <argument> <value>
For example: 'BenchmarkDemo --mode demo'

Supported arguments:

--help, -?  Prints out this help.
--mode      The startup mode. Can be one of: [ normal, demo, benchmark ].
            Mode is 'normal' by default.
            Normal mode will run with the configuration UI enabled.
            Demo mode will run continuously in the demo mode and will not generate benchmark
            log file. It also has the configuration UI disabled. Demo mode runs with
            highest settings if both '--target desktop' and '--preset highend' are set. There are
            no separate 'entrylevel' settings available, it will run as 'midrange' at the minimum.
            Benchmark mode will run the benchmark measurement in the given preset and
            target configuration. It also has the configuration UI disabled.
--preset    A preset for a certain level HW. Can be one of: [ entrylevel, midrange, highend ].
            Preset is 'midrange' by default.
--target    The target environment. Can be one of: [ embedded, desktop ].
            Target is 'desktop' by default.
--speed     Only used in demo mode. Determines the speed at which the animation loop is run.
            Can be one of: [ slow, normal, fast, veryfast ]. Speed is 'normal' by default.
--automatic Only used in benchmark mode. Defines a set of benchmarks to be run one after
            another. Can be one of: [ model, modelcount, light, lightcount, texture ].
            model and modelcount can be specified at the same time
            [ --automatic model --automatic modelcount ], as well as light
            and lightcount [ --automatic light --automatic lightcount ]. Preset affects the
            maximum model complexity, as well as the maximum number of lights and models. Cannot
            be used together with 'testset'.
--testset   Only used in benchmark mode. Value is a path to the JSON file containing the
            tests to be run. For example [ --testset /testscripts/exampletestset.json ]. Cannot
            be used together with 'automatic'.
--report    Only used in benchmark mode. Determines the report file style, either combining
            each test result into a single file, or saving each one into a separate file.
            'Single' style filename begins with the test script filename.
            Can be one of: [ single, multi ]. Report is 'single' by default.
                    ");
        Qt.callLater(Qt.quit);
    }

    function createConfig() {
        // Create all the settings here, and set them to benchmarkRoot
        if (!parser.modeDemo) {
            if (parser.presetEntrylevel) {
                console.log("EntryLevel Preset Used for "
                        + (parser.targetDesktop ? "Desktop" : "Embedded"));
                // OFF: shadows, IBL, AO, skybox, AA, textures
                // Model: 10k, #5
                // Lights: Directional, #1
                // Material: Default
                benchmarkRoot.shadowsEnabled = false;
                benchmarkRoot.iblEnabled = false;
                benchmarkRoot.aoEnabled = false;
                benchmarkRoot.skyboxEnabled = false;
                benchmarkRoot.texturesEnabled = false;
                benchmarkRoot.msaaQualityIndex = 0; // None
                benchmarkRoot.modelIndex = 1; // 10k
                benchmarkRoot.modelInstanceCount = parser.targetDesktop ? 10 : 5;
                benchmarkRoot.lightTypeIndex = 0; // Directional
                benchmarkRoot.lightInstanceCount = 1;
                benchmarkRoot.materialIndex = 0; // Default Material
            } else if (parser.presetMidrange) {
                console.log("MidRange Preset Used for "
                            + (parser.targetDesktop ? "Desktop" : "Embedded"));
                // OFF: shadows, IBL, AO, skybox
                // ON: AA, textures
                // AA: MSAA High
                // Texture size: 1024x1024
                // Model: 100k, #10
                // Lights: Point, #1
                // Material: Default (with textures)
                benchmarkRoot.shadowsEnabled = false;
                benchmarkRoot.iblEnabled = false;
                benchmarkRoot.aoEnabled = false;
                benchmarkRoot.skyboxEnabled = false;
                benchmarkRoot.texturesEnabled = true;
                benchmarkRoot.textureSizeIndex = parser.targetDesktop ? 3 : 2; // 2048x2048 / 1024x1024
                benchmarkRoot.msaaQualityIndex = parser.targetDesktop ? 2 : 1; // High / Medium
                benchmarkRoot.modelIndex = parser.targetDesktop ? 3 : 2; // 100k / 50k
                benchmarkRoot.modelInstanceCount = 10;
                benchmarkRoot.lightTypeIndex = 2; // Point
                benchmarkRoot.lightInstanceCount = 1;
                benchmarkRoot.materialIndex = 0; // Default Material
            } else {
                console.log("HighEnd Preset Used for "
                            + (parser.targetDesktop ? "Desktop" : "Embedded"));
                // ON: shadows, IBL, AO, skybox, AA, textures
                // AA: MSAA VeryHigh
                // Texture size: 4096x4096
                // Model: 500k, #20
                // Lights: Directional, #7
                // Material: Principled
                benchmarkRoot.shadowsEnabled = true;
                benchmarkRoot.iblEnabled = true;
                benchmarkRoot.aoEnabled = true;
                benchmarkRoot.skyboxEnabled = true;
                benchmarkRoot.texturesEnabled = true;
                benchmarkRoot.textureSizeIndex = parser.targetDesktop ? 4 : 3; // 4096x4096 / 2048x2048
                benchmarkRoot.msaaQualityIndex = parser.targetDesktop ? 3 : 2; // Very High / High
                benchmarkRoot.modelIndex = parser.targetDesktop ? 4 : 3; // 500k / 100k
                benchmarkRoot.modelInstanceCount = 20;
                benchmarkRoot.lightTypeIndex = 0; // Directional
                benchmarkRoot.lightInstanceCount = parser.targetDesktop ? 7 : 4;
                benchmarkRoot.materialIndex = 1; // Principled Material - Metal
            }
            if (parser.modeBenchmark) {
                // Benchmark mode
                console.log("Benchmark Mode");
                parser.quitAfter = true;
                // If any automatic benchmark modes have been activated, reset the defaults accordingly
                if (parser.autoModel)
                    benchmarkRoot.modelIndex = 0;
                if (parser.autoModelCount)
                    benchmarkRoot.modelInstanceCount = 1;
                if (parser.autoLight)
                    benchmarkRoot.lightTypeIndex = 0;
                if (parser.autoLightCount)
                    benchmarkRoot.lightInstanceCount = 1;
                if (parser.autoTexture) {
                    // Start with no textures
                    benchmarkRoot.texturesEnabled = false;
                    benchmarkRoot.textureSizeIndex = 0;
                }
            } else {
                // Normal mode
                console.log("Normal Mode");
            }
        } else {
            // Demo mode
            console.log("Demo Mode");
            benchmarkRoot.shadowsEnabled = true;
            benchmarkRoot.iblEnabled = true;
            benchmarkRoot.aoEnabled = (parser.targetDesktop && parser.presetHighend) ? true : false;
            benchmarkRoot.skyboxEnabled = true;
            benchmarkRoot.textureSizeIndex = (parser.targetDesktop && parser.presetHighend)
                    ? 4 : parser.targetDesktop ? 3 : 2; // 4096x4096 / 2048x2048 / 1024x1024
            benchmarkRoot.msaaQualityIndex = (parser.targetDesktop && parser.presetHighend)
                    ? 3 : 2; // Very High / High
            benchmarkRoot.modelIndex = 3; // 100k
            benchmarkRoot.modelInstanceCount = 1;
            benchmarkRoot.lightTypeIndex = 2; // Point
            benchmarkRoot.lightInstanceCount = 1;
            benchmarkRoot.materialIndex = 6; // Original Material
        }

        parsingDone();

        if (modeBenchmark)
            benchmarkTimer.start();
    }

    FileIO {
        id: fileChecker
    }

    Timer {
        id: benchmarkTimer
        interval: 2500
        running: false
        onTriggered: {
            startBenchmark();
        }
    }
}

/*##^##
Designer {
    D{i:0;3d-view:false}
}
##^##*/
