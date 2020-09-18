import QtQuick 2.12
import QtQuick3D 1.15
import QtQuick.Controls 2.15
import FileHelper 1.0

Item {
    anchors.fill: parent

    signal measurementDone

    property bool androidMode: false
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

    function start(view) {
        var date = new Date().toLocaleDateString(Qt.locale("en_EN"), "yyyy-MM-dd-");
        var time = new Date().toLocaleTimeString(Qt.locale("en_EN"), "hh-mm-ss");
        if (!singleReportMode) {
            logUrl = "file:./benchmark_result_" + date + time + ".txt";
        } else if (singleReportMode && logUrl.length === 0) {
            if (scriptName.length > 0)
                logUrl = "file:./" + scriptName + "_" + date + time + ".txt";
            else
                logUrl = "file:./" + "benchmark_result_automatic_" + date + time + ".txt";
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
