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
import QtQuick.Window 2.12
import QtQuick3D 1.15

Window {
    id: mainWindow

    readonly property int componentZClose: 100
    readonly property int componentZFar: -360
    // Multiplier for resolution independency
    readonly property real dp: 0.2 + width / 1600

    width: 1280
    height: 720
    visible: true
    title: qsTr("Qt Quick 3D DynamicMeters Demo")
    color: "#000000"
    // Enabled this to run the demo in fullscreen mode
    //visibility: Window.FullScreen

    Settings {
        id: settings
        SequentialAnimation on highlightColor {
            running: settings.highlightColorAnimated
            loops: Animation.Infinite
            ColorAnimation {
                to: "#20f0f0"
                duration: 8000
                easing.type: Easing.InOutQuad
            }
            ColorAnimation {
                to: "#f0f020"
                duration: 8000
                easing.type: Easing.InOutQuad
            }
            ColorAnimation {
                to: "#f02020"
                duration: 8000
                easing.type: Easing.InOutQuad
            }
        }
    }

    Settings {
        id: defaultSettings
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (resetSettingsOverlay.showAnimationProgress == 0)
                settings.animateMovement = !settings.animateMovement;
        }
        onPressed: {
            resetSettingsOverlay.startShow();
        }
        onReleased: {
            resetSettingsOverlay.stopShow();
        }
    }

    View3D {
        id: view3D
        anchors.fill: parent

        opacity: 0
        // Animate scene to visible on startup
        SequentialAnimation on opacity {
            PauseAnimation {
                duration: 200
            }
            NumberAnimation {
                to: 1.0
                duration: 2000
                easing.type: Easing.InOutQuad
            }
        }

        environment: SceneEnvironment {
            clearColor: "#000000"
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: settings.msaaAntialiasing ? SceneEnvironment.MSAA : SceneEnvironment.NoAA
            antialiasingQuality: SceneEnvironment.VeryHigh
        }

        PerspectiveCamera {
            readonly property bool adjustCameraForSettingsView: settings.showSettingsView && settingsView.show
            property real settingsAdjustZ: adjustCameraForSettingsView ? 40 : 0
            property real settingsAdjustX: adjustCameraForSettingsView ? -(settings.cameraDistance - 100) * 0.2 : 0
            property real camAnimatedX: 0
            property real camAnimatedY: 150

            position.z: settings.cameraDistance + settingsAdjustZ
            position.x: camAnimatedX + settingsAdjustX
            position.y: camAnimatedY

            Behavior on settingsAdjustZ {
                NumberAnimation {
                    duration: 2000
                    easing.type: Easing.OutBack
                }
            }
            Behavior on settingsAdjustX {
                NumberAnimation {
                    duration: 2000
                    easing.type: Easing.OutBack
                }
            }
            SequentialAnimation on camAnimatedX {
                loops: Animation.Infinite
                paused: !settings.animateMovement
                NumberAnimation {
                    to: -250
                    duration: 5000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    to: 250
                    duration: 5000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    to: 0
                    duration: 5000
                    easing.type: Easing.InOutQuad
                }
            }

            SequentialAnimation on camAnimatedY {
                loops: Animation.Infinite
                paused: !settings.animateMovement
                NumberAnimation {
                    to: -150
                    duration: 5000
                    easing.type: Easing.InOutQuad
                }
                PauseAnimation {
                    duration: 5000
                }
                NumberAnimation {
                    to: 150
                    duration: 5000
                    easing.type: Easing.InOutQuad
                }
            }
        }

        DirectionalLight {
            id: light1
            color: Qt.rgba(1.0, 0.9, 0.9, 1.0)
            ambientColor: Qt.rgba(0.0, 0.0, 0.0, 1.0)
            eulerRotation: Qt.vector3d(-155, -150, 0)
            visible: settings.light1Enabled
            brightness: settings.light1Brightness
            SequentialAnimation on rotation {
                loops: Animation.Infinite
                running: settings.animateLights
                QuaternionAnimation {
                    to: Quaternion.fromEulerAngles(-110, -150, 0)
                    duration: 2000
                    easing.type: Easing.InOutQuad
                }
                QuaternionAnimation {
                    to: Quaternion.fromEulerAngles(-155, -150, 0)
                    duration: 2000
                    easing.type: Easing.InOutQuad
                }
            }
        }

        PointLight {
            id: light2
            color: Qt.rgba(0.9, 1.0, 0.9, 1.0)
            ambientColor: Qt.rgba(0.0, 0.0, 0.0, 1.0)
            position: Qt.vector3d(0, 400, 400)
            visible: settings.light2Enabled
            brightness: settings.light2Brightness
            SequentialAnimation on x {
                loops: Animation.Infinite
                running: settings.animateLights
                NumberAnimation {
                    to: 400
                    duration: 3000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    to: 0
                    duration: 3000
                    easing.type: Easing.InOutQuad
                }
            }
        }

        AreaLight {
            id: light3
            color: Qt.rgba(0.9, 0.9, 1.0, 1.0)
            ambientColor: Qt.rgba(0.0, 0.0, 0.0, 1.0)
            position: Qt.vector3d(-50, 450, 150)
            eulerRotation: Qt.vector3d(-115, -190, 0)
            width: 1000
            height: 200
            visible: settings.light3Enabled
            brightness: settings.light3Brightness
            SequentialAnimation on z {
                loops: Animation.Infinite
                running: settings.animateLights
                NumberAnimation {
                    to: 600
                    duration: 2000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    to: 150
                    duration: 2000
                    easing.type: Easing.InOutQuad
                }
            }
        }

        // Background model
        Model {
            property real sizeScale: 2.2
            source: "#Rectangle"
            z: -700
            y: 200
            eulerRotation.x: -30
            scale: Qt.vector3d(16 * sizeScale, 9 * sizeScale, 1)
            materials: [
                DefaultMaterial {
                    // Animate diffuseColor
                    property color diffuseC: Qt.rgba(0.6 + 0.4 * settings.highlightColor.r,
                                                     0.6 + 0.4 * settings.highlightColor.g,
                                                     0.6 + 0.4 * settings.highlightColor.b)
                    diffuseColor: diffuseC
                    diffuseMap: Texture {
                        source: "images/background2.jpg"
                    }
                    bumpAmount: 0.4
                    normalMap: Texture {
                        source: settings.backgroundBumpMapping ? "images/background2n.jpg" : ""
                    }
                }
            ]
        }

        GraphComponent {
            x: -350
            y: -180
            z: mainWindow.componentZFar
            eulerRotation.x: -10

            SequentialAnimation on eulerRotation.y {
                loops: Animation.Infinite
                paused: !settings.animateMovement
                NumberAnimation {
                    duration: 1500
                    to: 0
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    duration: 1500
                    to: 30
                    easing.type: Easing.InOutQuad
                }
            }

            SequentialAnimation on z {
                loops: Animation.Infinite
                paused: !settings.animateMovement
                NumberAnimation {
                    duration: 5000
                    to: mainWindow.componentZClose
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    duration: 5000
                    to: mainWindow.componentZFar
                    easing.type: Easing.InOutQuad
                }
                PauseAnimation {
                    duration: 5000
                }
            }
        }

        AssistantComponent {
            x: 350
            y: -180
            z: mainWindow.componentZFar
            eulerRotation.x: -10

            SequentialAnimation on eulerRotation.y {
                loops: Animation.Infinite
                paused: !settings.animateMovement
                NumberAnimation {
                    duration: 1500
                    to: -30
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    duration: 1500
                    to: 0
                    easing.type: Easing.InOutQuad
                }
            }

            SequentialAnimation on z {
                loops: Animation.Infinite
                paused: !settings.animateMovement
                PauseAnimation {
                    duration: 5000
                }
                NumberAnimation {
                    duration: 5000
                    to: mainWindow.componentZClose
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    duration: 5000
                    to: mainWindow.componentZFar
                    easing.type: Easing.InOutQuad
                }
            }
        }

        SpeedometerComponent {
            id: meterComponent
            y: 180
            z: mainWindow.componentZClose
            eulerRotation.x: -10

            SequentialAnimation on eulerRotation.y {
                loops: Animation.Infinite
                paused: !settings.animateMovement
                NumberAnimation {
                    duration: 1500
                    to: -15
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    duration: 1500
                    to: 15
                    easing.type: Easing.InOutQuad
                }
            }

            SequentialAnimation on z {
                loops: Animation.Infinite
                paused: !settings.animateMovement
                NumberAnimation {
                    duration: 5000
                    to: mainWindow.componentZFar
                    easing.type: Easing.InOutQuad
                }
                PauseAnimation {
                    duration: 5000
                }
                NumberAnimation {
                    duration: 5000
                    to: mainWindow.componentZClose
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }

    FpsItem {
        id: fpsItem
        anchors.top: parent.top
        anchors.right: parent.right
        show: settings.showFps
    }

    SettingsView {
        id: settingsView
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.margins: 20
        visible: settings.showSettingsView
    }

    ResetSettingsOverlay {
        id: resetSettingsOverlay
        onAnimationFinished: {
            settings.reset();
        }
    }
}
