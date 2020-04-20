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

Item {
    id: rootItem

    property bool show: true
    property bool initialized: false
    readonly property int fps: view3D.renderStats.fps
    readonly property real renderTime: view3D.renderStats.renderTime
    readonly property real frameTime: view3D.renderStats.frameTime
    readonly property real syncTime: view3D.renderStats.syncTime

    width: parent.width
    height: Math.floor(48 * dp)

    onFpsChanged: {
        // When we first frames have been rendered values are initialized
        if (!initialized)
            initialized = true;
    }

    opacity: initialized && show
    visible: opacity && initialized
    Behavior on opacity {
        NumberAnimation {
            duration: 800
            easing.type: Easing.InOutQuad
        }
    }

    Image {
        id: animatingIcon
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 8 * dp
        height: 32 * dp
        width: height
        opacity: 0.4
        source: settings.animateMovement ? "images/play.png" : "images/pause.png"
        mipmap: true
        Behavior on source {
            SequentialAnimation {
                NumberAnimation {
                    target: animatingIcon
                    property: "opacity"
                    to: 0
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
                PropertyAction {
                    target: animatingIcon
                    property: "source"
                }

                NumberAnimation {
                    target: animatingIcon
                    property: "opacity"
                    to: 0.4
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }

    Image {
        id: spinnerImage
        anchors.centerIn: animatingIcon
        width: 32 * dp
        height: width
        source: "images/spinner.png"
        mipmap: true
        NumberAnimation on rotation {
            running: settings.animateMovement
            from:0
            to: 360
            duration: 1000
            loops: Animation.Infinite
        }
    }

    Text {
        anchors.right: animatingIcon.left
        anchors.rightMargin: 8 * dp
        anchors.verticalCenter: animatingIcon.verticalCenter
        color: "#c0c0c0"
        opacity: 0.6
        font.pixelSize: 16 * dp
        text: "RENDER: " + rootItem.renderTime.toFixed(2) + " ms | " +
              "SYNC: " + rootItem.syncTime.toFixed(2) + " ms | " +
              "FRAME: " + rootItem.frameTime.toFixed(2) + " ms | " +
              rootItem.fps + " fps"
    }
}
