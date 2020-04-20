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

#include "qngaugeitempainter.h"
#include "qngaugeitem.h"
#include <QtMath>

QNGaugeItemPainter::QNGaugeItemPainter()
{
}

void QNGaugeItemPainter::synchronize(QNanoQuickItem *item)
{
    QNGaugeItem *realItem = static_cast<QNGaugeItem*>(item);
    if (realItem) {
        bool anglesUpdateRequired = (m_minValue != realItem->minValue())
                || (m_maxValue != realItem->maxValue())
                || (!qFuzzyCompare(m_mainTicksDelta, realItem->mainTicksDelta()))
                || (!qFuzzyCompare(m_minorTicksDelta, realItem->minorTicksDelta()))
                || (!qFuzzyCompare(m_numberLabelsDelta, realItem->numberLabelsDelta()))
                || (!qFuzzyCompare(m_bottomDirection, realItem->bottomDirection()))
                || (!qFuzzyCompare(m_ticksAngle, realItem->ticksAngle()));

        m_value = realItem->value();
        m_minValue = realItem->minValue();
        m_maxValue = realItem->maxValue();

        m_mainTicksDelta = realItem->mainTicksDelta();
        m_minorTicksDelta = realItem->minorTicksDelta();
        m_numberLabelsDelta = realItem->numberLabelsDelta();

        m_mainTicksLength = realItem->mainTicksLength();
        m_minorTicksLength = realItem->minorTicksLength();

        m_bottomDirection = realItem->bottomDirection();
        m_ticksAngle = realItem->ticksAngle();

        m_numberLabelsDistance = realItem->numberLabelsDistance();
        m_numberLabelsFontSize = realItem->numberLabelsFontSize();

        m_highlightColor = QNanoColor::fromQColor(realItem->highlightColor());

        if (anglesUpdateRequired)
            updateTickAngles();

    }
}

static QPointF pointAtCircle(QPointF center, float radius, float angle)
{
    QPointF p(center.x() + radius * qCos(angle),
              (center.y() + radius * qSin(angle)));
    return p;
}


void QNGaugeItemPainter::updateTickAngles()
{
    m_mainTickAngles.clear();
    m_minorTickAngles.clear();
    m_numberLabelAngles.clear();

    m_startAngleRad = qDegreesToRadians(m_bottomDirection);
    m_ticksAngleRad = qDegreesToRadians(m_ticksAngle);
    m_nonTicksAngleRad = 2 * M_PI - m_ticksAngleRad;

    int mainTicksAmount = int(1 + (m_maxValue - m_minValue) / m_mainTicksDelta);
    int minorTicksAmount = int(1 + (m_maxValue - m_minValue) / m_minorTicksDelta);
    int numberLabelsAmount = int(1 + (m_maxValue - m_minValue) / m_numberLabelsDelta);

    for (int i=0 ; i<mainTicksAmount ; i++) {
        float angle = m_startAngleRad + m_nonTicksAngleRad/2 + m_ticksAngleRad * (float(i) / (mainTicksAmount-1));
        m_mainTickAngles.append(angle);
    }

    for (int i=0 ; i<minorTicksAmount ; i++) {
        float angle = m_startAngleRad + m_nonTicksAngleRad/2 + m_ticksAngleRad * (float(i) / (minorTicksAmount-1));
        if (!m_mainTickAngles.contains(angle)) {
            // Don't add minor ticks into same angles with major ticks
            m_minorTickAngles.append(angle);
        }
    }

    for (int i=0 ; i<numberLabelsAmount ; i++) {
        float angle = m_startAngleRad + m_nonTicksAngleRad/2 + m_ticksAngleRad * (float(i) / (numberLabelsAmount-1));
        m_numberLabelAngles.append(angle);
    }

}

void QNGaugeItemPainter::paintMainTicks()
{
    if (m_mainTicksLength > 0) {
        for (int i=0 ; i<m_mainTickAngles.size() ; i++) {
            float angle = m_mainTickAngles.at(i);
            painter()->moveTo(pointAtCircle(m_center, m_radius - m_mainTicksLength * m_dp, angle));
            painter()->lineTo(pointAtCircle(m_center, m_radius, angle));
        }
    }
}
void QNGaugeItemPainter::paintMinorTicks()
{
    if (m_minorTicksLength > 0) {
        for (int i=0 ; i<m_minorTickAngles.size() ; i++) {
            float angle = m_minorTickAngles.at(i);
            painter()->moveTo(pointAtCircle(m_center, m_radius - m_minorTicksLength * m_dp, angle));
            painter()->lineTo(pointAtCircle(m_center, m_radius, angle));
        }
    }
}

void QNGaugeItemPainter::paintGaugeLabels(const QPointF &centerPoint)
{
    for (int i=0 ; i<m_numberLabelAngles.size() ; i++) {
        float angle = m_numberLabelAngles.at(i);
        float value = m_minValue + (m_maxValue - m_minValue) * (float(i) / (m_numberLabelAngles.size()-1));
        QString label = QString::number(int(value));
        painter()->fillText(label, pointAtCircle(centerPoint, m_radius - (m_numberLabelsDistance * m_radius), angle));
    }
}

void QNGaugeItemPainter::paint(QNanoPainter *painter)
{            
    m_dp = width() / 512;
    const float w = width();
    const float h = height();
    m_radius = w / 2 - 2 * m_dp;

    m_center = QPointF(w/2, h/2);

    // Background
    /*
    QNanoRadialGradient grad;
    grad.setStartColor("#808080");
    grad.setEndColor("#606060");
    grad.setCenterPosition(w/2, h/2);
    grad.setOuterRadius(qMax(w, h)*0.6f);
    painter->setFillStyle(grad);
    painter->setStrokeStyle("#F0F0F0");
    painter->setLineWidth(1);

    painter->beginPath();
    painter->circle(m_center, m_radius+3);
    painter->fill();
    painter->stroke();
    */

    // Paint ticks
    if (m_minorTicksLength > 0 || m_mainTicksLength > 0) {
        painter->setAntialias(1.5f * m_dp);
        painter->beginPath();
        paintMinorTicks();
        paintMainTicks();
        painter->setStrokeStyle(QNanoColor(255, 255, 255));
        //painter->setLineWidth(1.5f * m_dp);
        painter->setLineWidth(3.0f * m_dp);
        painter->stroke();

    }

    // Paint number labels
    if (m_showNumberLabels) {
        painter->beginPath();
        painter->setTextAlign(QNanoPainter::ALIGN_CENTER);
        painter->setTextBaseline(QNanoPainter::BASELINE_MIDDLE);
        painter->setFillStyle(QNanoColor(0, 0, 0));
        QNanoFont font1;
        font1.setFontId(QNanoFont::DEFAULT_FONT_BOLD);
        font1.setPixelSize(m_numberLabelsFontSize * m_dp);
        font1.setBlur(2.0 * m_dp);
        painter->setFont(font1);
        const QPointF shadowCenter = m_center + QPointF(2.0 * m_dp, 2.0 * m_dp);
        paintGaugeLabels(shadowCenter);

        painter->setFillStyle(QNanoColor(255, 255, 255));
        font1.setBlur(0.0);
        painter->setFont(font1);
        paintGaugeLabels(m_center);
    }

    // Paint speed labels
    QString speedLabel = QString::number(int((m_maxValue - m_minValue) * m_value));
    QNanoFont font2;
    font2.setFontId(QNanoFont::DEFAULT_FONT_BOLD_ITALIC);
    font2.setPixelSize(m_numberLabelsFontSize * 1.5 * m_dp);
    font2.setBlur(0.0);
    painter->setFont(font2);
    painter->setFillStyle(QNanoColor(250, 250, 250));
    painter->fillText(speedLabel, w / 2, h * 0.80);
    font2.setPixelSize(m_numberLabelsFontSize * m_dp);
    painter->setFont(font2);
    float angle2 = (m_startAngleRad) - m_nonTicksAngleRad - m_ticksAngleRad;
    painter->setFillStyle(QNanoColor(200, 200, 200));
    painter->fillText("km/h", pointAtCircle(m_center, 0.42 * h, angle2));

    // Paint needle
    painter->beginPath();
    QPointF c(w / 2, h / 2);
    painter->translate(c);
    float angle = (M_PI - m_startAngleRad) + m_nonTicksAngleRad/2 + (1.0 - m_value) * m_ticksAngleRad;
    painter->rotate(-angle);
    painter->translate(-c);
    float needleWidth = 6 * m_dp;
    float shadowWidth = needleWidth + 6 * m_dp;
    float needleHeight = h * 0.48;
    // Shadow/glow
    painter->setAntialias(8.0 * m_dp);
    painter->setStrokeStyle(m_highlightColor);
    painter->setLineWidth(shadowWidth);
    painter->setLineCap(QNanoPainter::CAP_ROUND);
    painter->setGlobalAlpha(0.5);
    painter->moveTo(w / 2, h / 2);
    painter->lineTo(w / 2 - needleHeight, h / 2);
    painter->stroke();
    // Needle
    painter->beginPath();
    painter->setAntialias(2.0);
    painter->setStrokeStyle(QNanoColor(255, 255, 255));
    painter->setLineWidth(needleWidth);
    painter->setGlobalAlpha(1.0);
    painter->moveTo(w / 2, h / 2);
    painter->lineTo(w / 2 - needleHeight, h / 2);
    painter->stroke();
}
