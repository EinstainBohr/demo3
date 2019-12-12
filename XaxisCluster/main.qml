import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick3D.Helpers 1.12

//
// Note: Font sizes are adjusted for target HW (R-Car D3 with 1920x720 display). They will look
// very wrong on desktop (at least with High DPI screen).
//

Window {
    id: mainView
    visible: true
    width: 1920
    height: 720
    title: qsTr("Xaxis Cluster")
    color: "black"
    visibility: Window.AutomaticVisibility // On target device, use this only if display size is 1920 x 720

    // Image string
    property string lineImageLeft: "qrc:/Sequences/LineIntro/Line_intro_001_premult_5.png"
    property string lineImageRight: "qrc:/Sequences/LineIntro/Line_intro_001_premult_5.png"

    // Line intro image sequence number
    property int imageSeqNo: 0

    onImageSeqNoChanged: {
        lineImageRight = "qrc:/Sequences/LineIntro/Line_intro_001_premult_"
                + imageSeqNo.toFixed(0) + ".png";
        lineImageLeft = lineImageRight;
    }

    // Opacities
    property real warningIconOpacity: 1.0
    property real linesOpacity: 1.0

    // Line image bottom margin (image sequence is different size than the final image)
    property int linesBottomMargin: -75
    property int linesSideMargin: 0

    FontLoader {
        id: customfont
        source: "qrc:/TitilliumWeb-Light.ttf"
    }

    //
    // If display is not 1920x720, these need to be wrapped into 1920x720 Item
    // ("these" meaning everything until Animations)
    //

    // 3D ADAS view
    AdasView {
        id: adasview
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 80
        width: 1290
        height: 510
        opacity: 1.0 - warningIconOpacity
    }

    // Frame - left side
    Image {
        id: topLeftFrame
        anchors.top: parent.top
        anchors.left: parent.left
        source: "qrc:/Images/Frame/Frame_left_top_solid_001.ktx"
    }

    Image {
        id: sideLeftFrame
        anchors.top: topLeftFrame.bottom
        anchors.left: parent.left
        source: "qrc:/Images/Frame/Frame_left_side_solid_001.ktx"
    }

    Image {
        id: bottomLeftFrame
        anchors.top: sideLeftFrame.bottom
        anchors.left: parent.left
        source: "qrc:/Images/Frame/Frame_left_bottom_solid_001.ktx"
    }

    // Frame - right side
    Image {
        id: topRightFrame
        anchors.top: parent.top
        anchors.right: parent.right
        source: "qrc:/Images/Frame/Frame_left_top_solid_001.ktx"
        mirror: true
    }

    Image {
        id: sideRightFrame
        anchors.top: topRightFrame.bottom
        anchors.right: parent.right
        source: "qrc:/Images/Frame/Frame_left_side_solid_001.ktx"
        mirror: true
    }

    Image {
        id: bottomRightFrame
        anchors.top: sideRightFrame.bottom
        anchors.right: parent.right
        source: "qrc:/Images/Frame/Frame_left_bottom_solid_001.ktx"
        mirror: true
    }

    // Text and icons to top bar
    Text {
        id: timeText
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 65
        color: "#e0e0e0"
        font.pointSize: 30
        font.family: customfont.name
        text: sim.localTime
    }

    Row {
        anchors.right: timeText.left
        anchors.verticalCenter: timeText.verticalCenter
        anchors.rightMargin: 125
        spacing: 20
        visible: sim.startupAnimation
        opacity: warningIconOpacity

        Image {
            source: "qrc:/Images/Icons/Warning_engine_001.png"
        }
        Image {
            source: "qrc:/Images/Icons/Warning_oil_001.png"
        }
        Image {
            source: "qrc:/Images/Icons/Warning_battery_001.png"
        }
    }

    Row {
        anchors.left: timeText.right
        anchors.verticalCenter: timeText.verticalCenter
        anchors.leftMargin: 125
        spacing: 20
        visible: sim.startupAnimation
        opacity: warningIconOpacity

        Image {
            source: "qrc:/Images/Icons/Warning_parkingBrake_001.png"
        }
        Image {
            source: "qrc:/Images/Icons/Warning_handbBrake_001.png"
        }
        Image {
            source: "qrc:/Images/Icons/Warning_ABS_001.png"
        }
    }

    // Lines & battery
    Image {
        anchors.right: parent.horizontalCenter
        anchors.bottom: bottomLeftFrame.top
        anchors.rightMargin: linesSideMargin
        anchors.bottomMargin: linesBottomMargin
        mirror: !adasview.isRunning
        source: lineImageLeft
        opacity: linesOpacity
    }

    Image {
        x: 1425
        y: 420
        source: "qrc:/Sequences/BatteryStateFine/BatteryCharge_001_000" + sim.batteryLevel.toFixed(0) + ".ktx"
        opacity: 1.0 - warningIconOpacity

        Text {
            anchors.centerIn: parent
            font.pointSize: 24
            font.family: customfont.name
            color: "#a9aeb6"
            text: sim.chargeState
        }
    }

    Image {
        anchors.left: parent.horizontalCenter
        anchors.bottom: bottomRightFrame.top
        anchors.leftMargin: linesSideMargin
        anchors.bottomMargin: linesBottomMargin
        mirror: adasview.isRunning
        source: lineImageRight
        opacity: linesOpacity
    }

    // Side gauges
    Image {
        id: sideLeftGauge
        anchors.left: parent.left
        anchors.bottom: bottomLeftFrame.top
        anchors.leftMargin: 175
        mirror: true
        source: "qrc:/Sequences/SideGauge/SideGauge_" + sim.fuelLevel.toFixed(0) + ".png"
        opacity: 1.0 - warningIconOpacity
    }

    Image {
        id: sideRightGauge
        anchors.right: parent.right
        anchors.bottom: bottomRightFrame.top
        anchors.rightMargin: 175
        source: "qrc:/Sequences/SideGauge/SideGauge_" + sim.chargeLevel.toFixed(0) + ".png"
        opacity: 1.0 - warningIconOpacity
    }

    // Fuel and range icons
    Image {
        anchors.left: sideLeftGauge.right
        anchors.bottom: sideLeftGauge.bottom
        source: "qrc:/Images/Icons/Fuel_001.ktx"
        opacity: 1.0 - warningIconOpacity
    }

    Image {
        anchors.right: sideRightGauge.left
        anchors.bottom: sideRightGauge.bottom
        source: "qrc:/Images/Icons/Battery_001.ktx"
        opacity: 1.0 - warningIconOpacity
    }

    // Nav icons
    Row {
        x: 258
        y: 218
        spacing: 20
        opacity: 1.0 - warningIconOpacity

        Image {
            id: navTurn
            source: "qrc:/Images/Icons/Nav_turn_001.ktx"
            mirror: sim.turnLeftNext
        }
        Text {
            anchors.verticalCenter: navTurn.verticalCenter
            color: "#a9aeb6"
            font.pointSize: 24
            font.family: customfont.name
            text: sim.nextTurn
        }
    }

    Row {
        x: 239
        y: 269
        spacing: 20
        opacity: 1.0 - warningIconOpacity

        Image {
            id: navTime
            source: "qrc:/Images/Icons/Nav_time_001.ktx"
        }
        Text {
            anchors.verticalCenter: navTime.verticalCenter
            color: "#a9aeb6"
            font.pointSize: 24
            font.family: customfont.name
            text: sim.arrivalTime
        }
    }

    Row {
        x: 222
        y: 324
        spacing: 20
        opacity: 1.0 - warningIconOpacity

        Image {
            id: navRange
            source: "qrc:/Images/Icons/Nav_range_001.ktx"
        }
        Text {
            anchors.verticalCenter: navRange.verticalCenter
            color: "#a9aeb6"
            font.pointSize: 24
            font.family: customfont.name
            text: sim.distanceToFinish
        }
    }

    // Speed and range
    Column {
        x: 200
        y: 490
        spacing: -15
        opacity: 1.0 - warningIconOpacity

        Text {
            id: speed
            width: 200
            color: "#a9aeb6"
            font.pointSize: 75
            font.family: customfont.name
            text: sim.speed.toFixed(0)
            horizontalAlignment: Text.AlignHCenter
        }
        Text {
            anchors.horizontalCenter: speed.horizontalCenter
            color: "#a9aeb6"
            font.pointSize: 20
            font.family: customfont.name
            text: "km/h"
        }
    }

    Column {
        x: 1460
        y: 560
        spacing: -10
        opacity: 1.0 - warningIconOpacity

        Text {
            id: range
            width: 200
            color: "#a9aeb6"
            font.pointSize: 50
            font.family: customfont.name
            text: sim.range.toFixed(0)
            horizontalAlignment: Text.AlignHCenter
        }
        Text {
            anchors.horizontalCenter: range.horizontalCenter
            color: "#a9aeb6"
            font.pointSize: 12
            font.family: customfont.name
            text: "Range|km"
        }
    }

    // FpsDisplay
    DebugView {
        source: adasview.view
        opacity: 1.0 - warningIconOpacity
    }

    //
    // Animations
    //

    // Startup animation
    SequentialAnimation {
        id: startup
        running: true
        // Image sequences
        PropertyAnimation {
            target: mainView
            property: "imageSeqNo"
            duration: 1000
            from: 5
            to: 24
        }
        // Opacity changes for lines
        PropertyAnimation {
            target: mainView
            property: "linesOpacity"
            duration: 500
            from: 1.0
            to: 0.0
        }
        // Activate ADAS, even though it's still not visible
        ScriptAction {
            script: {
                lineImageLeft = "qrc:/Images/LineGroup_Left_matted.ktx";
                lineImageRight = "qrc:/Images/LineGroup_Right_matted.ktx";
                linesBottomMargin = 0;
                linesSideMargin = 20;
                adasview.isRunning = true;
            }
        }
        // Opacity changes for lines
        PropertyAnimation {
            target: mainView
            property: "linesOpacity"
            duration: 500
            from: 0.0
            to: 1.0
        }
        // Opacity changes
        PropertyAnimation {
            target: mainView
            property: "warningIconOpacity"
            duration: 1000
            from: 1.0
            to: 0.0
        }
        // Camera rotation
        PropertyAnimation {
            target: adasview
            property: "cameraRotation"
            duration: 3000
            from: 0.0
            to: 35
            easing.type: Easing.InOutCubic;
        }
        // All done
        ScriptAction {
            script: sim.startupAnimation = false;
        }
    }

    function restartDemo() {
        linesSideMargin = 0;
        linesBottomMargin = -75;
        warningIconOpacity = 1.0;
        adasview.isRunning = false;
        adasview.cameraRotation = 0.0;
        startup.restart();
    }

    //
    // Simulation data
    //
    SimulationData {
        id: sim
    }
}
