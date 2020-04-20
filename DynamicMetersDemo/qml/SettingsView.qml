/****************************************************************************
**
** Copyright (C) 2020 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.15
import QtQuick.Controls 2.14

Item {
    id: rootItem

    property bool show: true
    property real showAnimation: show ? 1 : 0

    width: settings.settingsViewWidth
    x: -(width + 30) * (1 - showAnimation) + 20

    Behavior on showAnimation {
        NumberAnimation {
            duration: 400
            easing.type: Easing.InOutQuad
        }
    }

    // Open/close button
    Item {
        width: 30 * dp
        height: 30 * dp
        anchors.left: parent.right
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: -10
        Rectangle {
            anchors.fill: parent
            color: "#404040"
            opacity: 0.4
            border.width: 1
            border.color: "#808080"
        }

        Image {
            anchors.centerIn: parent
            source: "images/arrow.png"
            rotation: rootItem.showAnimation * 180
        }
        MouseArea {
            anchors.fill: parent
            anchors.margins: -30 * dp
            onClicked: {
                rootItem.show = !rootItem.show;
            }
        }
    }

    // Background
    Rectangle {
        anchors.fill: scrollView
        opacity: showAnimation ? 0.6 : 0
        visible: opacity
        anchors.margins: -10
        color: "#404040"
        border.color: "#808080"
        border.width: 1
    }

    ScrollView {
        id: scrollView
        anchors.fill: parent
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.interactive: false
        clip: true
        Column {
            id: settingsArea
            anchors.fill: parent
            opacity: showAnimation
            visible: opacity

            Item {
                width: 1
                height: 20
            }
            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                width: parent.width * 0.8
                height: width * 0.25
                source: "images/Built_with_Qt_RGB_logo.png"
            }
            Item {
                width: 1
                height: 28
            }

            SettingsComponentView {
                id: settingsViewGeneral
                text: qsTr("General")

                SettingsComponentCheckBox {
                    text: qsTr("Animated Highlight Color")
                    checked: settings.highlightColorAnimated
                    onToggled: {
                        settings.highlightColorAnimated = checked;
                        if (!checked) {
                            settings.highlightColor = highlightColorSelector.value;
                        }
                    }
                }
                SettingsComponentColorSelector {
                    id: highlightColorSelector
                    width: settings.settingsViewWidth - 10
                    Connections {
                        target: settings
                        function onReseted() {
                            highlightColorSelector.setValues(settings.highlightColor.r,
                                                             settings.highlightColor.g,
                                                             settings.highlightColor.b);
                        }
                    }

                    enabled: !settings.highlightColorAnimated
                    onValueChanged: {
                        settings.highlightColor = value;
                    }
                }
                SettingsComponentSlider {
                    text: qsTr("Texture Resolution") + " (" + value + "x" + value + ")";
                    value: settings.textureResolution
                    from: 256
                    to: 2048
                    stepSize: 128
                    onMoved: {
                        settings.textureResolution = value;
                    }
                }
                SettingsComponentSlider {
                    text: qsTr("Camera Distance")
                    value: settings.cameraDistance
                    from: 250
                    to: 1000
                    onMoved: {
                        settings.cameraDistance = value;
                    }
                }
                SettingsComponentCheckBox {
                    text: qsTr("Show Statistics")
                    checked: settings.showFps
                    onToggled: {
                        settings.showFps = checked;
                    }
                }
                SettingsComponentCheckBox {
                    text: qsTr("Background Bumpmapping")
                    checked: settings.backgroundBumpMapping
                    onToggled: {
                        settings.backgroundBumpMapping = checked;
                    }
                }
                SettingsComponentCheckBox {
                    text: qsTr("MSAA Antialiasing")
                    checked: settings.msaaAntialiasing
                    onToggled: {
                        settings.msaaAntialiasing = checked;
                    }
                }
            }

            SettingsComponentView {
                text: qsTr("Lights")
                show: false
                SettingsComponentSlider {
                    text: qsTr("Directional Light")
                    showCheckbox: true
                    checked: settings.light1Enabled
                    onToggled: {
                        settings.light1Enabled = checked;
                    }
                    value: settings.light1Brightness
                    from: 0
                    to: 200
                    onMoved: {
                        settings.light1Brightness = value;
                    }
                }
                SettingsComponentSlider {
                    text: qsTr("Point Light")
                    showCheckbox: true
                    checked: settings.light2Enabled
                    onToggled: {
                        settings.light2Enabled = checked;
                    }
                    value: settings.light2Brightness
                    from: 0
                    to: 8000
                    onMoved: {
                        settings.light2Brightness = value;
                    }
                }
                SettingsComponentSlider {
                    text: qsTr("Area Light")
                    showCheckbox: true
                    checked: settings.light3Enabled
                    onToggled: {
                        settings.light3Enabled = checked;
                    }
                    value: settings.light3Brightness
                    from: 0
                    to: 2000
                    onMoved: {
                        settings.light3Brightness = value;
                    }
                }
                SettingsComponentSlider {
                    text: qsTr("Speedometer SpotLight")
                    showCheckbox: true
                    checked: settings.light4Enabled
                    onToggled: {
                        settings.light4Enabled = checked;
                    }
                    value: settings.light4Brightness
                    from: 0
                    to: 1000
                    onMoved: {
                        settings.light4Brightness = value;
                    }
                }
            }

            SettingsComponentView {
                text: qsTr("Speedometer Component")
                show: false

                SettingsComponentSlider {
                    text: qsTr("Ticks Angle")
                    value: settings.meterTicksAngle
                    from: 240
                    to: 320
                    onMoved: {
                        settings.meterTicksAngle = value;
                    }
                }
                SettingsComponentSlider {
                    text: qsTr("Max Value")
                    value: settings.meterMaxValue
                    from: 140
                    to: 320
                    stepSize: 20
                    onMoved: {
                        settings.meterMaxValue = value;
                    }
                }
                SettingsComponentSlider {
                    text: qsTr("Bottom Direction")
                    value: settings.meterBottomDirection
                    from: 0
                    to: 180
                    onMoved: {
                        settings.meterBottomDirection = value;
                    }
                }
            }
            SettingsComponentView {
                text: qsTr("Graph Component")
                show: false
                SettingsComponentCheckBox {
                    text: qsTr("Ruler")
                    checked: settings.graphRulerEnabled
                    onToggled: {
                        settings.graphRulerEnabled = checked;
                    }
                }
                SettingsComponentCheckBox {
                    text: qsTr("Bezier Lines")
                    checked: settings.graphBezierEnabled
                    onToggled: {
                        settings.graphBezierEnabled = checked;
                    }
                }
                SettingsComponentCheckBox {
                    text: qsTr("Bar Graph")
                    checked: settings.graphBarsEnabled
                    onToggled: {
                        settings.graphBarsEnabled = checked;
                    }
                }
            }
            SettingsComponentView {
                text: qsTr("Assistant Component")
                show: false

                SettingsComponentSlider {
                    text: qsTr("Audio Volume")
                    value: settings.assistantVolumeMultiplier
                    from: 0.6
                    to: 4.0
                    onMoved: {
                        settings.assistantVolumeMultiplier = value;
                    }
                }
                SettingsComponentSlider {
                    text: qsTr("Particles")
                    showCheckbox: true
                    checked: settings.assistantParticlesEnabled
                    onToggled: {
                        settings.assistantParticlesEnabled = checked;
                    }
                    value: settings.assistantParticlesAmount
                    from: 5
                    to: 300
                    onMoved: {
                        settings.assistantParticlesAmount = value;
                    }
                }
            }
        }
    }
}
