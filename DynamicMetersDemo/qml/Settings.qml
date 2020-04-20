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

QtObject {
    id: rootItem

    // Emitted when settings are reseted to default
    signal reseted

    // When adding settings here remember to add them also into reset()

    // *** General settings - No UI for these ***
    // Change to false to not show settings view at all
    property bool showSettingsView: true
    property real settingsViewWidth: 100 + 150 * dp

    // *** General settings ***
    property bool showFps: true
    property color highlightColor: Qt.rgba(1.0, 1.0, 0.0, 1.0)
    property bool highlightColorAnimated: true
    property bool animateMovement: true
    property bool backgroundBumpMapping: true
    property int textureResolution: 512
    property bool msaaAntialiasing: true
    property real cameraDistance: 640

    // *** Lights settings ***
    property bool animateLights: true
    property bool light1Enabled: true
    property bool light2Enabled: true
    property bool light3Enabled: false
    property bool light4Enabled: true
    property real light1Brightness: 80
    property real light2Brightness: 1000
    property real light3Brightness: 200
    property real light4Brightness: 500

    // *** Speedometer component ***
    property int meterMinValue: 0
    property int meterMaxValue: 260
    property int meterMainTicksDelta: 10
    property int meterMinorTicksDelta: 2
    property int meterNumberLabelsDelta: 20
    property int meterMainTicksLength: 20
    property int meterMinorTicksLength: 4
    property int meterBottomDirection: 90
    property int meterTicksAngle: 300
    property real meterNumberLabelsDistance: 0.22
    property int meterNumberLabelsFontSize: 42

    // *** Assistant component ***
    property real assistantVolumeMultiplier: 2.0
    property bool assistantParticlesEnabled: true
    property real assistantParticlesAmount: 50
    // Text labels, add as many as you like
    property var assistantTexts: [
        "Qt Assistant",
        "How can I help you?",
        "Yes,\nQt Quick 3D\nis GREAT!"
    ]

    // *** Graph component ***
    property bool graphRulerEnabled: true
    property bool graphBezierEnabled: true
    property bool graphBarsEnabled: false

    function reset() {
        // *** General settings ***
        showFps = defaultSettings.showFps;
        highlightColor = defaultSettings.highlightColor;
        highlightColorAnimated = defaultSettings.highlightColorAnimated;
        animateMovement = defaultSettings.animateMovement;
        backgroundBumpMapping = defaultSettings.backgroundBumpMapping;
        textureResolution = defaultSettings.textureResolution;
        msaaAntialiasing = defaultSettings.msaaAntialiasing;
        cameraDistance = defaultSettings.cameraDistance;

        // *** Lights settings ***
        animateLights = defaultSettings.animateLights;
        light1Enabled = defaultSettings.light1Enabled;
        light2Enabled = defaultSettings.light2Enabled;
        light3Enabled = defaultSettings.light3Enabled;
        light4Enabled = defaultSettings.light4Enabled;
        light1Brightness = defaultSettings.light1Brightness;
        light2Brightness = defaultSettings.light2Brightness;
        light3Brightness = defaultSettings.light3Brightness;
        light4Brightness = defaultSettings.light4Brightness;

        // *** Speedometer component ***
        meterMinValue = defaultSettings.meterMinValue;
        meterMaxValue = defaultSettings.meterMaxValue;
        meterMainTicksDelta = defaultSettings.meterMainTicksDelta;
        meterMinorTicksDelta = defaultSettings.meterMinorTicksDelta;
        meterNumberLabelsDelta = defaultSettings.meterNumberLabelsDelta;
        meterMainTicksLength = defaultSettings.meterMainTicksLength;
        meterMinorTicksLength = defaultSettings.meterMinorTicksLength;
        meterBottomDirection = defaultSettings.meterBottomDirection;
        meterTicksAngle = defaultSettings.meterTicksAngle;
        meterNumberLabelsDistance = defaultSettings.meterNumberLabelsDistance;
        meterNumberLabelsFontSize = defaultSettings.meterNumberLabelsFontSize;

        // *** Assistant component ***
        assistantVolumeMultiplier = defaultSettings.assistantVolumeMultiplier;
        assistantParticlesEnabled = defaultSettings.assistantParticlesEnabled;
        assistantParticlesAmount = defaultSettings.assistantParticlesAmount;

        // *** Graph component ***
        graphRulerEnabled = defaultSettings.graphRulerEnabled;
        graphBezierEnabled = defaultSettings.graphBezierEnabled;
        graphBarsEnabled = defaultSettings.graphBarsEnabled;

        rootItem.reseted();
    }
}
