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

#include "qngraphitempainter.h"
#include "qngraphitem.h"
#include <math.h>
#include <QtMath>
#include <QVarLengthArray>
#include <algorithm>

QNGraphItemPainter::QNGraphItemPainter()
    : m_animationTime(0.0)
    , m_enabledTests(0)
{
    // Setup colors
    m_colorWhite = QNanoColor(255,255,255,255);
    m_colorGray = QNanoColor(180,180,180,255);
    m_colorBlack = QNanoColor(0,0,0,255);
    m_color1 = QNanoColor(0,0,0,20);
}

void QNGraphItemPainter::synchronize(QNanoQuickItem *item)
{
    // Setting values here synchronized
    QNGraphItem *realItem = static_cast<QNGraphItem*>(item);
    if (realItem) {
        m_animationTime = realItem->animationTime();
        m_enabledTests = realItem->enabledTests();
        m_highlightColor = QNanoColor::fromQColor(realItem->highlightColor());
    }
}


void QNGraphItemPainter::paint(QNanoPainter *painter)
{
    m_painter = painter;
    m_dp = width() / 512;

    float w = width();
    float h = height();
    float t = m_animationTime;

    // Paint lines
    if (m_enabledTests & 4) {
        drawGraphLine(0, h, w, -h*0.9f, 6,  t+10, true);
        drawGraphLine(0, h, w, -h*0.5f, 12, (t+5) * 5.0, false);
    }
    // Paint circles
    if (m_enabledTests & 2) {
        float bigCircle = h * 0.35f;
        drawGraphCircles(w/2-bigCircle/2, h*0.1f, bigCircle, bigCircle, t*2);
    }
    // Paint bars
    if (m_enabledTests & 8) {
        drawGraphBars(w*0.1, h, w*0.8, -h*0.4f, 10, t*5);
    }
    // Paint ruler
    if (m_enabledTests & 1) {
        drawRuler(0, h*0.52f, w, h*0.08f, t*5);
    }

}

void QNGraphItemPainter::drawGraphLine(float x, float y, float w, float h, int items, float t, bool beziers)
{
    QVarLengthArray<float, 1024> samples(items);
    QVarLengthArray<float, 1024> sx(items); QVarLengthArray<float, 1024> sy(items);
    float dx = w/(items-1);
    float dotSize = 80.0 * m_dp / (items + 2);
    int i;

    // Generate positions
    for (i = 0; i<items; i++) {
        samples[i] = 0.5 + sinf((i+1) * t * 0.2) * 0.1;
    }
    for (i = 0; i < items; i++) {
        sx[i] = x+i*dx;
        sy[i] = y+h*samples[i]*0.8f;
    }

    float antialias = std::max(1.0f, 1.5f * m_dp);
    m_painter->setAntialias(antialias);

    // Draw graph background area
    QNanoColor color2 = m_highlightColor;
    color2.setAlphaF(0.5f);
    QNanoLinearGradient bg(x, y, x, y + h * 0.5, m_color1, color2);
    m_painter->beginPath();
    m_painter->moveTo(sx[0], sy[0]);
    for (i = 1; i < items; i++) {
        if (beziers)
            m_painter->bezierTo(sx[i-1]+dx*0.5f,sy[i-1], sx[i]-dx*0.5f,sy[i], sx[i],sy[i]);
        else
            m_painter->lineTo(sx[i],sy[i]);
    }
    m_painter->lineTo(x+w, y);
    m_painter->lineTo(x, y);
    m_painter->setFillStyle(bg);
    m_painter->fill();

    // Draw graph line
    m_painter->beginPath();
    m_painter->moveTo(sx[0], sy[0]);
    for (i = 1; i < items; i++) {
        if (beziers)
            m_painter->bezierTo(sx[i-1]+dx*0.5f,sy[i-1], sx[i]-dx*0.5f,sy[i], sx[i],sy[i]);
        else
            m_painter->lineTo(sx[i],sy[i]);
    }
    m_painter->setStrokeStyle(m_colorGray);
    m_painter->setLineWidth(1.0f+dotSize*0.2f);
    m_painter->stroke();

    // Draw dots
    m_painter->beginPath();
    for (i = 0; i < items; i++)
        m_painter->circle(sx[i], sy[i], dotSize*0.8);
    m_painter->setLineWidth(dotSize*0.2);
    m_painter->setStrokeStyle(m_colorBlack);
    m_painter->setFillStyle(m_colorWhite);
    m_painter->fill();
    m_painter->stroke();
}

void QNGraphItemPainter::drawGraphBars(float x, float y, float w, float h, int items, float t) {

    QVarLengthArray<float, 1024> samples(items);
    QVarLengthArray<float, 1024> sx(items); QVarLengthArray<float, 1024> sy(items);
    float dx = w/items;
    float barWidth = dx * 0.8f;
    float margin = dx - barWidth;
    int i;

    // Generate positions
    for (i = 0; i<items; i++) {
        samples[i] = 0.6f + sinf(i*0.8f+t)*0.1f - cosf(i*t*0.3)*0.1;
    }
    for (i = 0; i < items; i++) {
        sx[i] = x+i*dx + margin/2;
        sy[i] = h*samples[i];
    }

    // Draw graph bars
    m_painter->beginPath();
    for (i = 0; i < items; i++) {
        m_painter->rect((int)sx[i]+0.5f, (int)y+1.5f, (int)barWidth, (int)sy[i]);
    }
    int lineWidth = 2.0f * m_dp;
    m_painter->setLineWidth(lineWidth);
    m_painter->setLineJoin(QNanoPainter::JOIN_MITER);
    QNanoLinearGradient bg(x, y, x, y + h * 0.5, m_color1, m_highlightColor);
    m_painter->setFillStyle(bg);
    m_painter->setStrokeStyle(m_colorBlack);
    m_painter->fill();
    m_painter->stroke();

    // Paint labels
    QNanoFont font1(QNanoFont::DEFAULT_FONT_BOLD);
    font1.setPixelSize(22 * m_dp);
    m_painter->setFont(font1);
    m_painter->setFillStyle("#000000");
    m_painter->setTextAlign(QNanoPainter::ALIGN_CENTER);
    m_painter->setTextBaseline(QNanoPainter::BASELINE_MIDDLE);
    for (i = 0; i < items; i++) {
        m_painter->fillText(QString::number(int(-sy[i] * 0.2)), sx[i] + barWidth/2, y + sy[i] + 14 * m_dp);
    }
}

void QNGraphItemPainter::drawGraphCircles(float x, float y, float w, float h, float t)
{
    float barWidth1 = 10 * m_dp;
    float barWidth2 = 20 * m_dp;
    float showAnimationProgress = sinf(t)*0.5 + 0.5;

    float cx = x+w/2;
    float cy = y+h/2;
    float a1 = -(float)M_PI/2;
    float radius1 = w/2;

    m_painter->setLineJoin(QNanoPainter::JOIN_ROUND);
    m_painter->setLineCap(QNanoPainter::CAP_ROUND);
    float antialias = std::max(1.0f, 2.0f * m_dp);
    m_painter->setAntialias(antialias);

    // Draw outer circle
    m_painter->setLineWidth(barWidth1);
    float r = radius1;
    QNanoColor backgroundColor(255,255,255,120);
    QNanoColor ringColor = m_highlightColor;
    ringColor.setAlphaF(0.6f);
    m_painter->setStrokeStyle(backgroundColor);
    m_painter->beginPath();
    m_painter->circle(cx, cy, r);
    m_painter->stroke();

    m_painter->beginPath();
    float a0 = (2 * M_PI * showAnimationProgress) - (M_PI / 2) + 0.001;
    m_painter->arc(cx, cy, r, a0, a1, QNanoPainter::WINDING_CCW);
    m_painter->setStrokeStyle(ringColor);
    m_painter->stroke();

    // Draw inner circle
    m_painter->setLineWidth(barWidth2);
    float r2 = radius1 - barWidth1/2 - barWidth2/2 - (4 * m_dp);
    m_painter->setStrokeStyle(backgroundColor);
    m_painter->beginPath();
    m_painter->circle(cx, cy, r2);
    m_painter->stroke();

    m_painter->beginPath();
    float a02 = (M_PI * showAnimationProgress) - (M_PI / 2) + 0.001;
    m_painter->arc(cx, cy, r2, a02, a1, QNanoPainter::WINDING_CCW);
    m_painter->setStrokeStyle(ringColor);
    m_painter->stroke();

    // Paint labels
    QNanoFont font1(QNanoFont::DEFAULT_FONT_BOLD);
    font1.setPixelSize(w * 0.16);
    m_painter->setFont(font1);
    m_painter->setFillStyle("#FFFFFF");
    m_painter->setTextAlign(QNanoPainter::ALIGN_CENTER);
    m_painter->setTextBaseline(QNanoPainter::BASELINE_MIDDLE);
    int value = (a0 + M_PI/2) * 100.0;
    m_painter->fillText(QString::number(value), cx, cy - radius1*0.3);
    m_painter->fillText("MOVES", cx, cy);
    int value2 = std::round(showAnimationProgress*100);
    m_painter->fillText(QString::number(value2) + "%", cx, cy + radius1*0.3);
}

void QNGraphItemPainter::paintShadowText(const QString &text, QPointF pos) {
    m_painter->setFillStyle("#000000");
    m_font1.setBlur(3);
    m_painter->setFont(m_font1);
    m_painter->fillText(text, pos);
    m_painter->setFillStyle("#E0E0E0");
    m_font1.setBlur(0);
    m_painter->setFont(m_font1);
    m_painter->fillText(text, pos);
}

void QNGraphItemPainter::drawRuler(float x, float y, float w, float h, float t)
{
    float posX = x + w*0.05f;
    double space = w*0.03f + sinf(t)*w*0.02f;
    m_painter->setTextAlign(QNanoPainter::ALIGN_CENTER);
    m_painter->setTextBaseline(QNanoPainter::BASELINE_MIDDLE);
    float fontSize = 30 * m_dp;
    m_font1.setPixelSize(fontSize);
    m_painter->setFont(m_font1);
    m_painter->setStrokeStyle("#E0E0E0");
    m_painter->setFillStyle("#E0E0E0");
    m_painter->beginPath();
    int i = 0;
    while (posX < w) {
        m_painter->moveTo(posX, y);
        float height = h*0.2;
        QPointF textPoint(posX, y+h);
        if (i%10==0) {
            height = h*0.5;
            paintShadowText(QString::number(i), textPoint);
        } else if (i%5==0) {
            height = h*0.3;
            if (space > w*0.02)
                paintShadowText(QString::number(i), textPoint);
        }
        m_painter->lineTo(posX, y+height);
        posX += space;
        i++;
    }
    m_painter->setAntialias(2.0);
    float lineWidth = std::max(1.0f, 4.0f * m_dp);
    m_painter->setLineWidth(lineWidth);
    m_painter->stroke();
}
