import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

Item {
    property bool fullScreenActive: false
    property bool demoActive: true
    property color color
    property color borderColor
    property color textColor

    Rectangle {
        id: viewSettingsControlPanel
        color: parent.color
        radius: 5
        border.width: 1
        border.color: borderColor
        width: parent.width
        height: parent.height

        Rectangle {
            id: demoIconRect
            anchors.left: viewSettingsControlPanel.left
            anchors.top: viewSettingsControlPanel.top
            anchors.bottom: viewSettingsControlPanel.bottom
            width: parent.width / 2
            opacity: 0
            MouseArea {
                anchors.fill: parent
                onClicked: toggleDemoMode()
            }
        }

        Image {
            id: demoIcon
            anchors.centerIn: demoIconRect
            height: 32
            width: 32
            source: "icons/demo-icon.png"
        }

        ColorOverlay {
            id: demoIconColor
            anchors.fill: demoIcon
            source: demoIcon
            color: demoActive ? "#FFFFFFFF" : "#ABABABFF"
        }

        Rectangle {
            id: delimiterLine
            color: borderColor
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: 1
            anchors.left: demoIconRect.right
            anchors.topMargin: 5
            anchors.bottomMargin: 5
        }

        Rectangle {
            id: fullScreenIconRect
            anchors.left: delimiterLine.right
            anchors.top: viewSettingsControlPanel.top
            anchors.bottom: viewSettingsControlPanel.bottom
            width: parent.width / 2
            opacity: 0
            MouseArea {
                anchors.fill: parent
                onClicked: toggleFullScreen()
            }
        }

        Image {
            id: fullScreenIcon
            anchors.centerIn: fullScreenIconRect
            height: 32
            source: "icons/expand-icon.png"
            width: 32
        }

        ColorOverlay {
            id: fullScreenIconColor
            anchors.fill: fullScreenIcon
            source: fullScreenIcon
            color:  "#FFFFFFFF"
        }
    }

    function toggleFullScreen() {
        if (fullScreenActive) {
            window.showNormal()
            fullScreenActive = false
        } else {
            window.showFullScreen()
            fullScreenActive = true
        }
    }

    function toggleDemoMode() {
        demoActive = !demoActive
    }
}

/*##^##
Designer {
    D{i:0;height:50;width:100}
}
##^##*/
