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
import QtQuick3D 1.15
import QNPDynamicMeters 1.0
import QtQuick.Particles 2.0

Node {
    id: rootNode

    readonly property real texdp: settings.textureResolution / 512

    Connections {
        target: settings
        function onTextureResolutionChanged() {
            // When the texture resolution changes let's
            // discard the existing particles.
            particleSystem.reset()
        }
    }

    Model {
        source: "meshes/edge.mesh"
        scale: Qt.vector3d(30, 30, 30)
        eulerRotation.x: 90
        materials: DefaultMaterial {
            diffuseColor: "#b0b0b0"
        }
    }

    Model {
        z: 30
        source: "#Rectangle"
        scale: Qt.vector3d(4.2, 4.2, 1)
        materials: DefaultMaterial {
            diffuseMap: Texture {
                sourceItem: Item {
                    width: settings.textureResolution
                    height: settings.textureResolution

                    QNWaveItem {
                        id: contentItem
                        width: parent.width
                        height: parent.height
                        visible: false
                        fillColor: "#60000000"
                        dummyVolume: true
                        volumeMultiplier: settings.assistantVolumeMultiplier
                        highlightColor: settings.highlightColor
                        SequentialAnimation {
                            running: settings.assistantParticlesEnabled
                            loops: Animation.Infinite
                            PauseAnimation {
                                duration: 2000
                            }
                            ScriptAction {
                                script: burstEmitterItem.burst(settings.assistantParticlesAmount * 0.5);
                            }
                            PauseAnimation {
                                duration: 4500
                            }
                            ScriptAction {
                                script: burstEmitterItem.burst(settings.assistantParticlesAmount * 2.0);
                            }
                            PauseAnimation {
                                duration: 1500
                            }
                            ScriptAction {
                                script: burstEmitterItem.burst(settings.assistantParticlesAmount);
                            }
                        }

                        ParticleSystem {
                            id: particleSystem
                            anchors.fill: parent
                            ImageParticle {
                                source: "images/particleA.png"
                            }

                            Emitter {
                                id: emitterItem
                                anchors.centerIn: parent
                                width: 100 * texdp
                                height: 100 * texdp
                                enabled: settings.assistantParticlesEnabled
                                emitRate: settings.assistantParticlesAmount
                                lifeSpan: 4000
                                size: 6 * texdp
                                sizeVariation: 3 * texdp
                                endSize: 0
                                shape: EllipseShape {fill: true}
                                velocity: TargetDirection {
                                    targetX: emitterItem.width/2
                                    targetY: emitterItem.height/2
                                    proportionalMagnitude: true
                                    magnitude: -1.5
                                    magnitudeVariation: 1.4
                                }
                            }
                            Emitter {
                                id: burstEmitterItem
                                anchors.centerIn: parent
                                width: 10 * texdp
                                height: 10 * texdp
                                emitRate: 0
                                lifeSpan: 2000
                                size: 10 * texdp
                                sizeVariation: 6 * texdp
                                endSize: 0
                                shape: EllipseShape {fill: false}
                                velocity: TargetDirection {
                                    targetX: burstEmitterItem.width/2
                                    targetY: burstEmitterItem.height/2
                                    proportionalMagnitude: true
                                    magnitude: -15.0
                                    magnitudeVariation: 2.0
                                }
                            }
                        }
                    }
                    CircleClipEffect {
                        sourceItem: contentItem
                        anchors.fill: contentItem
                    }
                    Text {
                        id: assistantTextItem
                        property int textIndex: 0
                        anchors.centerIn: parent
                        color: "#ffffff"
                        font.pixelSize: 48 * texdp
                        horizontalAlignment: Text.AlignHCenter
                        style: Text.Outline
                        styleColor: "#000000"
                        opacity: 0
                        SequentialAnimation {
                            running: true
                            loops: Animation.Infinite
                            ScriptAction {
                                script: {
                                    assistantTextItem.text = settings.assistantTexts[assistantTextItem.textIndex];
                                    if (assistantTextItem.textIndex < settings.assistantTexts.length - 1)
                                        assistantTextItem.textIndex++;
                                    else
                                        assistantTextItem.textIndex = 0;
                                }
                            }
                            NumberAnimation {
                                target: assistantTextItem
                                property: "opacity"
                                duration: 400
                                to: 1
                                easing.type: Easing.InOutQuad
                            }
                            PauseAnimation {
                                duration: 4000
                            }
                            NumberAnimation {
                                target: assistantTextItem
                                property: "opacity"
                                duration: 400
                                to: 0
                                easing.type: Easing.InOutQuad
                            }
                        }
                    }
                }
            }
        }
    }
}
