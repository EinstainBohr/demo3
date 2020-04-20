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

#include "qnwaveitempainter.h"
#include "qnwaveitem.h"
#include <QtMath>

QNWaveItemPainter::QNWaveItemPainter()
{
    m_time.start();
}

void QNWaveItemPainter::synchronize(QNanoQuickItem *item)
{
    QNWaveItem *realItem = static_cast<QNWaveItem*>(item);
    if (realItem) {
        m_dummyVolume = realItem->dummyVolume();
        m_volumeMultiplier = realItem->volumeMultiplier();
        if (!m_dummyVolume) {
            float prevVolume = m_volume;
            float currentVolume = float(realItem->volume())*10.0f;
            currentVolume = qMin(currentVolume, 1.0f);
            // Smoothen volume changes as microphone levels can
            // change a lot instantly.
            if (currentVolume > prevVolume) {
                m_volume = qMin(currentVolume, prevVolume+0.15f);
            } else {
                m_volume = qMax(currentVolume, prevVolume * 0.90f);
            }

            m_volume = qMin(m_volume, 1.0f);
        }
        m_highlightColor = QNanoColor::fromQColor(realItem->highlightColor());
        // Keep animation running
        realItem->update();
    }
}

void QNWaveItemPainter::paint(QNanoPainter *painter)
{
    // Current time in seconds
    double t = m_time.elapsed() / 1000.0;

    painter->setAntialias(2.5);

    QNanoColor color1(m_highlightColor);
    QNanoColor color2(m_highlightColor);
    QNanoColor color3(m_highlightColor);

    color1.setAlphaF(m_volume * 0.8f);
    color2.setAlphaF(m_volume * 0.8f);
    color3.setAlphaF(m_volume * 0.8f);

    // Random waves
    float x1 = (cos(M_PI + t*2.0) * 0.05) + (sin(M_PI*0.4 + t*3.0) * 0.07);
    float h1 = 0.045 + (cos(M_PI*2.1 + t*4.5) * 0.02) + (sin(-M_PI*0.4 + t*7.5) * 0.015) + (sin(-M_PI*2.4 + t*17.5) * 0.006);
    float w1 = 0.15 + h1 * 2.3 + (cos(M_PI*2.1 + t*0.6) * 0.05) + (sin(-M_PI*0.4 + t*2.5) * 0.03);

    float x2 = (cos(M_PI*4.2 + t*1.3) * 0.06) + (sin(M_PI*0.6 + t*2.2) * 0.045);
    float h2 = 0.052 + (cos(M_PI*2.6 + t*2.1) * 0.011) + (sin(M_PI*1.38 + t*0.8) * 0.012) + (sin(-M_PI*5.1 + t*14.2) * 0.005);
    float w2 = 0.28 + h2 * 3.4 + (cos(-M_PI*1.1 + t*0.42) * 0.04) + (sin(M_PI*4.5 + t*1.4) * 0.052);

    float x3 = (cos(M_PI*3.1 + t*1.6) * 0.039) + (sin(M_PI*0.42 + t*1.64) * 0.083);
    float h3 = 0.042 + (cos(M_PI*1.7 + t*3.2) * 0.015) + (sin(M_PI*5.38 + t*0.43) * 0.021) + (sin(M_PI*2.9 + t*11.5) * 0.003);
    float w3 = 0.26 + h3 * 4.5 + (cos(-M_PI*6.1 + t*0.66) * 0.054) + (sin(M_PI*0.5 + t*0.62) * 0.032);

    float x4 = (cos(-7.4*M_PI + t*5.4) * 0.049) + (sin(-M_PI*6.3 + t*5.8) * 0.074);
    float h4 = 0.037 + (cos(M_PI*0.1 + t*3.2) * 0.015) + (sin(-M_PI*5.4 + t*8.1) * 0.019) + (sin(-M_PI*7.7 + t*21.5) * 0.0035);
    float w4 = 0.143 + h4 * 2.1 + (cos(M_PI*8.4 + t*0.38) * 0.063) + (sin(M_PI*3.2 + t*2.1) * 0.054);

    float x5 = (cos(M_PI*6.6 + t*1.9) * 0.041) + (sin(M_PI*4.2 + t*1.6) * 0.062);
    float h5 = 0.021 + (cos(M_PI*4.1 + t*6.5) * 0.011) + (sin(M_PI*1.12 + t*0.81) * 0.018) + (sin(-M_PI*8.4 + t*14.5) * 0.007);
    float w5 = 0.18 + h5 * 2.6 + (cos(-M_PI*9.1 + t*0.33) * 0.025) + (sin(M_PI*2.1 + t*3.1) * 0.023);

    float x6 = (cos(M_PI*2.5 + t*4.2) * 0.062) + (sin(-M_PI*5.32 + t*2.44) * 0.047);
    float h6 = 0.022 + (cos(-M_PI*6.7 + t*2.7) * 0.018) + (sin(M_PI*0.38 + t*1.03) * 0.011) + (sin(M_PI*5.4 + t*19.5) * 0.0055);
    float w6 = 0.25 + h6 * 3.8 + (cos(M_PI*5.7 + t*0.54) * 0.035) + (sin(M_PI*1.8 + t*0.46) * 0.021);

    if (!m_dummyVolume) {
        // When using real microphone, waves default heights shall be bigger
        float baseHeight = 0.02f;
        h1 = baseHeight + (sin(M_PI*1.7 + t*3.2) * 0.025);
        h2 = baseHeight + (sin(M_PI*2.2 + t*2.7) * 0.017);
        h3 = baseHeight + (sin(-M_PI*1.5 + t*9.2) * 0.023);
        h4 = baseHeight + (sin(-M_PI*4.2 + t*6.6) * 0.031);
        h5 = baseHeight + (sin(M_PI*7.3 + t*4.6) * 0.034);
        h6 = baseHeight + (sin(-M_PI*6.5 + t*5.7) * 0.028);
    }

    // Background halo
    QNanoRadialGradient grad;
    float totalH = 0.1 + (h1 + h2 + h3 + h4 + h5 + h6) * m_volume * 4.0;
    totalH = qMin(1.0f, totalH);
    QNanoColor startColor(m_highlightColor);
    startColor.setAlphaF(totalH);
    grad.setStartColor(startColor);
    grad.setEndColor("#40000000");
    grad.setCenterPosition(width()/2, height()/2);
    grad.setOuterRadius(qMax(width(), height()) * 0.4);
    painter->setFillStyle(grad);
    painter->beginPath();
    painter->rect(0, 0, width(), height());
    painter->fill();

    painter->setGlobalCompositeBlendFunc(QNanoPainter::BLEND_SRC_COLOR, QNanoPainter::BLEND_ONE);

    float v = m_volume * m_volumeMultiplier * 3.0;
    drawWaveLine(x1, w1 * (1.0 + v*0.2), v * h1, color1);
    drawWaveLine(x2, w2 * (1.0 + v*0.2), v * h2, color2);
    drawWaveLine(x3, w3 * (1.0 + v*0.2), v * h3, color3);

    drawWaveLine(x4, w4 * (1.0 + v*0.2), v * h4, color1);
    drawWaveLine(x5, w5 * (1.0 + v*0.2), v * h5, color2);
    drawWaveLine(x6, w6 * (1.0 + v*0.2), v * h6, color3);

    painter->setGlobalCompositeOperation(QNanoPainter::COMPOSITE_SOURCE_OVER);
}

void QNWaveItemPainter::drawWaveLine(float xR, float wR, float hR, const QNanoColor &c)
{
    auto p = painter();

    float x = xR * width()/2;
    float w = wR * width();
    float h = hR * height()/2;

    p->beginPath();

    QPointF pStart(width()/2 + x - w/2, height()/2);
    QPointF cp11(width()/2 + x - w/3, height()/2);
    QPointF cp12(width()/2 + x - w/8, height()/2 - h);
    QPointF pPeak(width()/2 + x, height()/2 - h);

    QPointF cp21(width()/2 + x + w/8, height()/2 - h);
    QPointF cp22(width()/2 + x + w/3, height()/2);
    QPointF pEnd(width()/2 + x + w/2, height()/2);

    p->moveTo(pStart);
    p->bezierTo(cp11, cp12, pPeak);
    p->bezierTo(cp21, cp22, pEnd);

    // Duplicate into upside down
    cp21.setY(height() - cp21.y());
    cp22.setY(height() - cp22.y());
    cp11.setY(height() - cp11.y());
    cp12.setY(height() - cp12.y());
    pPeak.setY(height() - pPeak.y());
    p->bezierTo(cp22, cp21, pPeak);
    p->bezierTo(cp12, cp11, pStart);

    p->setFillStyle(c);
    p->fill();
}
