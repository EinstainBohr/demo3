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

Node {
    id: rootNode
    property bool showBackground: true

    SpotLight {
        id: meterLight

        // Calculates the direction of needle
        function getNeedleAngle(startAngle) {
            return Math.sin(startAngle +
                            (((-settings.meterBottomDirection - 90) / 360) +
                             (-gaugeItem.value * settings.meterTicksAngle / 360) +
                             (settings.meterTicksAngle/2 + 180) / 360) * 2 * Math.PI);
        }

        readonly property real lightRadius: 160
        property real posX: getNeedleAngle(Math.PI) * lightRadius
        property real posY: getNeedleAngle(Math.PI / 2) * lightRadius

        position: Qt.vector3d(posX, posY, 80)
        coneAngle: 80
        innerConeAngle: 60
        color: settings.highlightColor
        visible: settings.light4Enabled
        brightness: settings.light4Brightness
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
        z: -4
        source: "meshes/background.mesh"
        scale: Qt.vector3d(30, 30, 30)
        eulerRotation.x: 90
        visible: showBackground
        materials: DefaultMaterial {
            diffuseColor: "#202020"
            opacity: 0.8
            bumpAmount: 2.8
            normalMap: Texture {
                source: "images/steel2n.png"
            }
        }
    }
    Model {
        z: -35
        source: "#Sphere"
        scale: Qt.vector3d(1.6, 0.2, 1.6)
        eulerRotation.x: 90
        visible: showBackground
        materials: DefaultMaterial {
            diffuseColor: "#b0b0b0"
        }
    }
    Model {
        z: 0
        source: "#Cylinder"
        scale: Qt.vector3d(0.2, 0.8, 0.2)
        eulerRotation.x: 90
        visible: showBackground
        materials: DefaultMaterial {
            diffuseColor: "#606060"
        }
    }
    Model {
        z: 30
        source: "#Sphere"
        scale: Qt.vector3d(0.4, 0.1, 0.4)
        eulerRotation.x: 90
        visible: showBackground
        materials: DefaultMaterial {
            diffuseColor: "#f0f0f0"
        }
    }

    Model {
        z: 30
        source: "#Rectangle"
        scale: Qt.vector3d(4,4,4)
        materials: DefaultMaterial {
            diffuseMap: Texture {
                sourceItem: Item {
                    id: sourceItem
                    width: settings.textureResolution
                    height: settings.textureResolution

                    QNGaugeItem {
                        id: gaugeItem

                        property real animationTimer: 0

                        SequentialAnimation on animationTimer {
                            running: true
                            loops: Animation.Infinite
                            NumberAnimation {
                                duration: 8000
                                to: 1
                                easing.type: Easing.InOutQuad
                            }
                            NumberAnimation {
                                duration: 8000
                                to: 0
                                easing.type: Easing.InOutQuad
                            }
                        }

                        anchors.fill: parent
                        highlightColor: settings.highlightColor
                        value: gaugeItem.animationTimer
                        minValue: settings.meterMinValue
                        maxValue: settings.meterMaxValue
                        mainTicksDelta: settings.meterMainTicksDelta
                        minorTicksDelta: settings.meterMinorTicksDelta
                        numberLabelsDelta: settings.meterNumberLabelsDelta
                        mainTicksLength: settings.meterMainTicksLength
                        minorTicksLength: settings.meterMinorTicksLength
                        bottomDirection: settings.meterBottomDirection
                        ticksAngle: settings.meterTicksAngle
                        numberLabelsDistance: settings.meterNumberLabelsDistance
                        numberLabelsFontSize: settings.meterNumberLabelsFontSize
                    }
                }
            }
        }
    }
}
