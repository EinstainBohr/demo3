import QtQuick 2.12

Item {
    property color textColor
    property color color
    property color borderColor

    Rectangle {
        id: fpsDisplayControl

        property alias fpslabel: fpsLabelText.text
        color: parent.color
        radius: 5
        border.width: 1
        border.color: borderColor
        width: parent.width
        height: parent.height

        Rectangle {
            id: leftColumn
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width / 2
            opacity: 0
        }

        Text {
            id: fpsText
            text: view3D.renderStats.fps
            font.family: "Helvetica"
            font.pixelSize: fpsDisplayControl.width / 6
            font.weight: Font.Light
            color: textColor
            anchors.margins: 5
            anchors.topMargin: 7
            anchors.horizontalCenter: leftColumn.horizontalCenter
            anchors.top: leftColumn.top
        }

        Text {
            id: fpsLabelText
            text: "fps"
            font.family: "Helvetica"
            font.pixelSize: fpsText.font.pixelSize / 1.8
            font.weight: Font.Light
            color: textColor
            anchors.top: fpsText.bottom
            anchors.topMargin: 5
            anchors.horizontalCenter: fpsText.horizontalCenter
        }

        Rectangle {
            color: borderColor
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 5
            anchors.bottomMargin: 5

        }

        Rectangle {
            id: rightColumn
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width / 2
            opacity: 0
        }

        Text {
            id: avgFpsText
            text: view3D.renderStats.renderTime.toFixed(2)
            font.family: "Helvetica"
            font.pixelSize: fpsText.font.pixelSize
            font.weight: Font.Light
            color: textColor
            anchors.margins: 5
            anchors.topMargin: 7
            anchors.horizontalCenter: rightColumn.horizontalCenter
            anchors.top: rightColumn.top
        }

        Text {
            id: avgFpsLabelText
            text: "render time"
            font.family: "Helvetica"
            font.pixelSize: fpsText.font.pixelSize / 1.8
            font.weight: Font.Light
            color: textColor
            anchors.top: avgFpsText.bottom
            anchors.topMargin: 5
            anchors.horizontalCenter: avgFpsText.horizontalCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:50;width:120}
}
##^##*/
