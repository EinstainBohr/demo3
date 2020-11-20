import QtQuick
import QtQuick3D
import QtQuick.Controls
import FileHelper

Item {
    anchors.fill: parent

    signal measurementDone

    property bool androidMode: false
    property bool reportModelStats: true
    property bool singleReportMode: false

    property View3D source
    property var config: []
    property bool quitAfter: false

    // From View3D.RenderStats
    property real frameTime: source === null ? 0 : source.renderStats.frameTime
    property real renderTime: source === null ? 0 : source.renderStats.renderTime
    property real syncTime: source === null ? 0 : source.renderStats.syncTime
    property int fps: source === null ? 0 : source.renderStats.fps

    // min/max
    property real maxFrameTime: 0
    property real minFrameTime: 5000
    property real maxRenderTime: 0
    property real minRenderTime: 5000
    property real maxSyncTime: 0
    property real minSyncTime: 5000
    property int maxFps: 0
    property int minFps: 5000

    // 1 min avg
    property real avgFps: 0
    property int fpsUpdates: 0

    // log
    property string measurementLog: ""
    property string logUrl: ""

    // test name in case of script testing
    property string testName: ""

    // script file name in case of script testing
    property string scriptName: ""

    // additional report name string
    property string settingsString: ""

    function start(view) {
        var date = new Date().toLocaleDateString(Qt.locale("en_EN"), "yyyy-MM-dd-");
        var time = new Date().toLocaleTimeString(Qt.locale("en_EN"), "hh-mm-ss");
        if (!singleReportMode) {
            logUrl = "file:./benchmark_result_" + date + time + ".txt";
        } else if (singleReportMode && logUrl.length === 0) {
            if (scriptName.length > 0) {
                logUrl = "file:./" + scriptName + "_" + date + time + ".txt";
            } else {
                logUrl = "file:./" + "benchmark_result_automatic_"
                        + settingsString
                        + date + time + ".txt";
            }
        }
        source = view;
        measureTimer.start();
    }

    function reset() {
        source = null;
        measurementLog = "";
        maxFrameTime = 0;
        minFrameTime = 5000;
        maxRenderTime = 0;
        minRenderTime = 5000;
        maxSyncTime = 0;
        minSyncTime = 5000;
        avgFps = 0;
        fpsUpdates = 0;
        maxFps = 0;
        minFps = 5000;
    }

    onFrameTimeChanged: {
        maxFrameTime = Math.max(maxFrameTime, frameTime);
        minFrameTime = Math.min(minFrameTime, frameTime);
        // If this is done in onFpsChanged, average will not be correct
        avgFps += fps;
        ++fpsUpdates;
    }

    onFpsChanged: {
        maxFps = Math.max(maxFps, fps);
        minFps = Math.min(minFps, fps);
    }

    onRenderTimeChanged: {
        maxRenderTime = Math.max(maxRenderTime, renderTime);
        minRenderTime = Math.min(minRenderTime, renderTime);
    }

    onSyncTimeChanged: {
        maxSyncTime = Math.max(maxSyncTime, syncTime);
        minSyncTime = Math.min(minSyncTime, syncTime);
    }

    Timer {
        id: measureTimer
        interval: 60000
        running: false
        onTriggered: {
            if (fpsUpdates === 0) {
                // Rerun with constant FPS
                avgFps = fps;
                minFps = fps;
                maxFps = fps;
            } else {
                avgFps /= fpsUpdates;
            }
            if (testName.length)
                measurementLog += "Test Set: " + testName + "\n";
            measurementLog += "Screen Size: (" + source.width + "x" + source.height + ")";
            measurementLog += "\nAverage FPS: " + avgFps;
            measurementLog += "\nMinimum FPS: " + minFps;
            measurementLog += "\nMaximum FPS: " + maxFps;
            measurementLog += "\nMinimum Frame Time: " + minFrameTime;
            measurementLog += "\nMaximum Frame Time: " + maxFrameTime;
            measurementLog += "\nMinimum Render Time: " + minRenderTime;
            measurementLog += "\nMaximum Render Time: " + maxRenderTime;
            measurementLog += "\nMinimum Sync Time: " + minSyncTime;
            measurementLog += "\nMaximum Sync Time: " + maxSyncTime;
            for (var i = 0; i < config.length; ++i)
                measurementLog += "\n" + config[i];
            if (reportModelStats) {
                measurementLog += "\nModel statistics:\n";
                var drawCalls = 0;
                var shadowDrawCalls = 0;
                var aoDrawCalls = 0;
                var skyboxDrawCalls = 0;
                switch (benchmarkRoot.modelIndex) {
                case 0:
                    measurementLog += "-Model consists of 3 separate meshes of 336 triangles each.\n";
                    measurementLog += "-There is one material used by all meshes.\n";
                    drawCalls = benchmarkRoot.modelInstanceCount * 3;
                    measurementLog += "-This results in 3 separate draw calls per model, i.e. "
                            + drawCalls + " draw calls per frame.\n";
                    break;
                case 1:
                    measurementLog += "-Model consists of 5 separate meshes. One has 21196 triangles and the rest 3792 triangles each.\n";
                    measurementLog += "-There is one material used by all meshes.\n";
                    drawCalls = benchmarkRoot.modelInstanceCount * 5;
                    measurementLog += "-This results in 5 separate draw calls per model, i.e. "
                            + drawCalls + " draw calls per frame.\n";
                    break;
                case 2:
                    measurementLog += "-Model consists of 5 separate meshes. One has 81734 triangles and the rest 1600 triangles each.\n";
                    measurementLog += "-There are 10 materials used by one mesh and 1 used by the rest.\n";
                    drawCalls = benchmarkRoot.modelInstanceCount * 14;
                    measurementLog += "-This results in 14 separate draw calls per model, i.e. "
                            + drawCalls + " draw calls per frame.\n";
                    break;
                case 3:
                    measurementLog += "-Model consists of 5 separate meshes. One has 154397 triangles and the rest 1600 triangles each.\n";
                    measurementLog += "-There are 10 materials used by one mesh and 1 used by the rest.\n";
                    drawCalls = benchmarkRoot.modelInstanceCount * 14;
                    measurementLog += "-This results in 14 separate draw calls per model, i.e. "
                            + drawCalls + " draw calls per frame.\n";
                    break;
                case 4:
                    measurementLog += "-Model consists of 5 separate meshes. One has 879892 triangles and the rest 1600 triangles each.\n";
                    measurementLog += "-There are 10 materials used by one mesh and 1 used by the rest.\n";
                    drawCalls = benchmarkRoot.modelInstanceCount * 14;
                    measurementLog += "-This results in 14 separate draw calls per model, i.e. "
                            + drawCalls + " draw calls per frame.\n";
                    break;
                }
                if (benchmarkRoot.skyboxEnabled && benchmarkRoot.iblEnabled) {
                    skyboxDrawCalls = 1;
                    measurementLog += "-Taking skybox into account there are "
                            + (drawCalls + skyboxDrawCalls)
                            + " draw calls per frame.\n";
                }
                if (benchmarkRoot.shadowsEnabled) {
                    shadowDrawCalls = benchmarkRoot.lightTypeIndex === 0 ? drawCalls : 6 * drawCalls;
                    measurementLog += "-Taking shadows into account there are "
                            + (drawCalls + skyboxDrawCalls + shadowDrawCalls)
                            + " draw calls per frame.\n";
                }
                if (benchmarkRoot.aoEnabled) {
                    aoDrawCalls = drawCalls;
                    measurementLog += "-Taking ambient occlusion into account there are "
                            + (drawCalls + skyboxDrawCalls + shadowDrawCalls + aoDrawCalls)
                            + " draw calls per frame, " + aoDrawCalls + " being depth-only.\n";
                }
            }
            if (singleReportMode)
                measurementLog += "\n\n";

            // Console log
            console.log(measurementLog);

            if (!androidMode) {
                // Write log
                fileWriter.source = logUrl;
                fileWriter.text = measurementLog;
                fileWriter.write(singleReportMode);
            } else {
                // Show log
                logOutput.text = measurementLog;
                logContainer.visible = true;
            }

            reset();

            if (quitAfter)
                Qt.callLater(Qt.quit);
            else
                measurementDone();
        }
    }

    FileIO {
        id: fileWriter
    }

    Rectangle {
        id: logContainer
        anchors.centerIn: parent
        visible: false
        width: parent.width / 3
        height: parent.height - 100
        color: "gray"

        TextEdit {
            id: logOutput
            anchors.fill: parent
            anchors.margins: 10

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.margins: 10
                text: "Close"
                onClicked: {
                    logContainer.visible = false;
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;3d-view:false}
}
##^##*/
