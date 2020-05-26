import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12
import QtQuick.Dialogs 1.0
import QtQuick3D.Effects 1.15

Item {
    property bool rainActive: true
    property color color
    property color borderColor
    property color textColor
    property int propertyIdx: 0

    Rectangle {
        id: effectControlPanel
        color: parent.color
        radius: 5
        border.width: 1
        border.color: borderColor
        width: parent.width
        height: parent.height

        Rectangle {
            id: rainIconRect
            anchors.left: effectControlPanel.left
            anchors.top: effectControlPanel.top
            anchors.bottom: effectControlPanel.bottom
            width: 60
            opacity: 0
            MouseArea {
                anchors.fill: parent
                onClicked: toggleRain()
            }
        }

        Image {
            id: rainIcon
            anchors.centerIn: rainIconRect
            height: 32
            width: 32
            source: "icons/rain-icon.png"
        }

        ColorOverlay {
            id: rainIconColor
            anchors.fill: rainIcon
            source: rainIcon
            color:  rainActive ? "#FFFFFFFF" : "#ABABABFF"
        }

        Rectangle {
            id: paintIconRect
            anchors.left: rainIconRect.right
            anchors.top: effectControlPanel.top
            anchors.bottom: effectControlPanel.bottom
            width: 60
            opacity: 0
            MouseArea {
                anchors.fill: parent
                onClicked: openColorDialog()
            }
        }

        Image {
            id: paintIcon
            anchors.centerIn: paintIconRect
            height: 32
            width: 32
            source: "icons/spray.png"
        }

        ColorOverlay {
            id: paintIconColor
            anchors.fill: paintIcon
            source: paintIcon
            color: "#FFFFFFFF"
        }

        Rectangle {
            id: delimiterLine
            color: borderColor
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: 1
            anchors.left: paintIconRect.right
            anchors.topMargin: 5
            anchors.bottomMargin: 5
        }

        Rectangle {
            id: lightEffectRect
            anchors.left: delimiterLine.right
            anchors.top: effectControlPanel.top
            anchors.bottom: effectControlPanel.bottom
            anchors.right: effectControlPanel.right
            opacity: 0
            MouseArea {
                anchors.fill: parent
                onClicked: toggleProperties()
            }
        }

        Label {
            id: propertyLabel
            anchors.left: effectIcon.right
            anchors.verticalCenter: lightEffectRect.verticalCenter
            anchors.margins: 10
            font.pixelSize: 18
            color: textColor
            Component.onCompleted: toggleProperties()
        }

        Image {
            id: effectIcon
            anchors.left: lightEffectRect.left
            anchors.leftMargin: 10
            anchors.verticalCenter: lightEffectRect.verticalCenter
            height: 32
            width: 32
            source: "icons/effect-icon.png"
        }

        ColorOverlay {
            id: effectIconColor
            anchors.fill: effectIcon
            source: effectIcon
            color:  propertyIdx ? "#FFFFFFFF" : "#ABABABFF"
        }
    }

    ColorDialog {
        id: colorDialog
        title: "Please choose a color"
        onAccepted: {
            console.log("You chose: " + colorDialog.color)
            rangeRover.carPaint = colorDialog.color
        }

        onColorChanged: {
            console.log("You chose: " + colorDialog.color)
        }

        onRejected: {
            console.log("Canceled")
        }
    }

    function toggleRain() {
        rainActive = !rainActive
        showRainFar = rainActive
        showRainNear = rainActive
        showWaterMesh = rainActive
        showWaterMeshTwo = rainActive
    }

    width: 350
    height: 50

    HDRBloomTonemap {
        id: hdrbloom
    }

    Fxaa {
        id: fxaa
    }

    DepthOfFieldHQBlur {
        id: depthoffield
        focusDistance: 120
        focusRange: 20
    }

    function toggleProperties() {
        if (toggleTimer.running)
            toggleTimer.restart()

        if (++propertyIdx > 3)
            propertyIdx = 0;

        effectList = ""

        switch (propertyIdx) {
        case 0:
            propertyLabel.text = "No effects";
            break;
        case 1:
            propertyLabel.text = "HDR Bloom";
            effectList = [ hdrbloom ]
            break;
        case 2:
            propertyLabel.text = "FXAA";
            effectList = [ fxaa ]
            break;
        case 3:
            propertyLabel.text = "Depth of Field Blur";
            effectList = [ depthoffield ]
            break;
        }
    }


    function openColorDialog() {
        colorDialog.open()
    }

    // Timer to toggle on/off some properties

    Timer {
        id: toggleTimer
        interval: 10000
        running: false
        repeat: true
        onTriggered: {
            toggleProperties()
        }
    }

}

/*##^##
Designer {
    D{i:0;height:50;width:350}
}
##^##*/
