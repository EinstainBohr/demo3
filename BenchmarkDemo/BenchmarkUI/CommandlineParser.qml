import QtQuick 2.12

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
                    }
                }
            }
        }
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
                // TODO: more target differences for entrylevel?
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
