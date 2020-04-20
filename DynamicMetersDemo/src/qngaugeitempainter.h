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

#ifndef QNGAUGEITEMPAINTER_H
#define QNGAUGEITEMPAINTER_H

#include "qnanoquickitempainter.h"
#include "qnanopainter.h"
#include <QtMath>

class QNGaugeItemPainter: public QObject, public QNanoQuickItemPainter
{
    Q_OBJECT
public:
    QNGaugeItemPainter();

    // Reimplement
    void synchronize(QNanoQuickItem *item) Q_DECL_OVERRIDE Q_DECL_FINAL;
    void paint(QNanoPainter *painter) Q_DECL_OVERRIDE Q_DECL_FINAL;


private:
    void updateTickAngles();
    void paintMinorTicks();
    void paintMainTicks();
    void paintGaugeLabels(const QPointF &centerPoint);

    QVector<float> m_mainTickAngles;
    QVector<float> m_minorTickAngles;
    QVector<float> m_numberLabelAngles;

    float m_dp = 1.0;

    float m_value = 0.0;
    int m_minValue = 0;
    int m_maxValue = 240;

    float m_mainTicksDelta = 10.0;
    float m_minorTicksDelta = 2.0;
    float m_numberLabelsDelta = 20.0;

    float m_mainTicksLength = 10.0f;
    float m_minorTicksLength = 5.0f;

    float m_bottomDirection = 90;
    float m_ticksAngle = 280;

    QNanoColor m_highlightColor;

    // Distance of number labels from gauge ticks, in percengages 0..1
    float m_numberLabelsDistance = 0.18f;
    float m_numberLabelsFontSize = 24.0f;
    bool m_showNumberLabels = true;
    float m_radius = 100;

    // No API for these
    float m_startAngleRad = 0;
    float m_ticksAngleRad = float(2 * M_PI);
    float m_nonTicksAngleRad = 0;
    QPointF m_center;

};

#endif // QNGAUGEITEMPAINTER_H
