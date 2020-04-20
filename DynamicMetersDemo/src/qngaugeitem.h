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

#ifndef QNGAUGEITEM_H
#define QNGAUGEITEM_H

#include "qnanoquickitem.h"
#include <QVector>

class QNanoQuickItemPainter;

class QNGaugeItem: public QNanoQuickItem
{
    Q_OBJECT
    Q_PROPERTY(float value READ value WRITE setValue NOTIFY valueChanged)
    Q_PROPERTY(int minValue READ minValue WRITE setMinValue NOTIFY minValueChanged)
    Q_PROPERTY(int maxValue READ maxValue WRITE setMaxValue NOTIFY maxValueChanged)
    Q_PROPERTY(float mainTicksDelta READ mainTicksDelta WRITE setMainTicksDelta NOTIFY mainTicksDeltaChanged)
    Q_PROPERTY(float minorTicksDelta READ minorTicksDelta WRITE setMinorTicksDelta NOTIFY minorTicksDeltaChanged)
    Q_PROPERTY(float mainTicksLength READ mainTicksLength WRITE setMainTicksLength NOTIFY mainTicksLengthChanged)
    Q_PROPERTY(float minorTicksLength READ minorTicksLength WRITE setMinorTicksLength NOTIFY minorTicksLengthChanged)
    Q_PROPERTY(float bottomDirection READ bottomDirection WRITE setBottomDirection NOTIFY bottomDirectionChanged)
    Q_PROPERTY(float ticksAngle READ ticksAngle WRITE setTicksAngle NOTIFY ticksAngleChanged)
    Q_PROPERTY(float numberLabelsDelta READ numberLabelsDelta WRITE setNumberLabelsDelta NOTIFY numberLabelsDeltaChanged)
    Q_PROPERTY(float numberLabelsDistance READ numberLabelsDistance WRITE setNumberLabelsDistance NOTIFY numberLabelsDistanceChanged)
    Q_PROPERTY(float numberLabelsFontSize READ numberLabelsFontSize WRITE setNumberLabelsFontSize NOTIFY numberLabelsFontSizeChanged)
    Q_PROPERTY(QColor highlightColor READ highlightColor WRITE setHighlightColor NOTIFY highlightColorChanged)

public:
    QNGaugeItem(QQuickItem *parent = nullptr);

    // Reimplement
    QNanoQuickItemPainter *createItemPainter() const Q_DECL_OVERRIDE Q_DECL_FINAL;


    float value() const
    {
        return m_value;
    }

    int minValue() const
    {
        return m_minValue;
    }

    int maxValue() const
    {
        return m_maxValue;
    }

    float mainTicksDelta() const
    {
        return m_mainTicksDelta;
    }

    float minorTicksDelta() const
    {
        return m_minorTicksDelta;
    }

    float mainTicksLength() const
    {
        return m_mainTicksLength;
    }

    float minorTicksLength() const
    {
        return m_minorTicksLength;
    }

    float bottomDirection() const
    {
        return m_bottomDirection;
    }

    float ticksAngle() const
    {
        return m_ticksAngle;
    }

    float numberLabelsDelta() const
    {
        return m_numberLabelsDelta;
    }

    float numberLabelsDistance() const
    {
        return m_numberLabelsDistance;
    }

    float numberLabelsFontSize() const
    {
        return m_numberLabelsFontSize;
    }

    QColor highlightColor() const {
        return m_highlightColor;
    }

public Q_SLOTS:

    void setValue(float value)
    {
        if (!qFuzzyIsNull(value) && qFuzzyCompare(m_value, value))
            return;

        m_value = value;
        emit valueChanged(m_value);
        update();
    }

    void setMinValue(int minValue)
    {
        if (m_minValue == minValue)
            return;

        m_minValue = minValue;
        emit minValueChanged(m_minValue);
        update();
    }

    void setMaxValue(int maxValue)
    {
        if (m_maxValue == maxValue)
            return;

        m_maxValue = maxValue;
        emit maxValueChanged(m_maxValue);
        update();
    }

    void setMainTicksDelta(float mainTicksDelta)
    {
        if (!qFuzzyIsNull(mainTicksDelta) && qFuzzyCompare(m_mainTicksDelta, mainTicksDelta))
            return;

        m_mainTicksDelta = mainTicksDelta;
        emit mainTicksDeltaChanged(m_mainTicksDelta);
        update();
    }

    void setMinorTicksDelta(float minorTicksDelta)
    {
        if (!qFuzzyIsNull(minorTicksDelta) && qFuzzyCompare(m_minorTicksDelta, minorTicksDelta))
            return;

        m_minorTicksDelta = minorTicksDelta;
        emit minorTicksDeltaChanged(m_minorTicksDelta);
        update();
    }

    void setMainTicksLength(float mainTicksLength)
    {
        if (!qFuzzyIsNull(mainTicksLength) && qFuzzyCompare(m_mainTicksLength, mainTicksLength))
            return;

        m_mainTicksLength = mainTicksLength;
        emit mainTicksLengthChanged(m_mainTicksLength);
        update();
    }

    void setMinorTicksLength(float minorTicksLength)
    {
        if (!qFuzzyIsNull(minorTicksLength) && qFuzzyCompare(m_minorTicksLength, minorTicksLength))
            return;

        m_minorTicksLength = minorTicksLength;
        emit minorTicksLengthChanged(m_minorTicksLength);
        update();
    }

    void setBottomDirection(float bottomDirection)
    {
        if (!qFuzzyIsNull(bottomDirection) && qFuzzyCompare(m_bottomDirection, bottomDirection))
            return;

        m_bottomDirection = bottomDirection;
        emit bottomDirectionChanged(m_bottomDirection);
        update();
    }

    void setTicksAngle(float ticksAngle)
    {
        if (!qFuzzyIsNull(ticksAngle) && qFuzzyCompare(m_ticksAngle, ticksAngle))
            return;

        m_ticksAngle = ticksAngle;
        emit ticksAngleChanged(m_ticksAngle);
        update();
    }

    void setNumberLabelsDelta(float numberLabelsDelta)
    {
        if (!qFuzzyIsNull(numberLabelsDelta) && qFuzzyCompare(m_numberLabelsDelta, numberLabelsDelta))
            return;

        m_numberLabelsDelta = numberLabelsDelta;
        emit numberLabelsDeltaChanged(m_numberLabelsDelta);
        update();
    }

    void setNumberLabelsDistance(float numberLabelsDistance)
    {
        if (!qFuzzyIsNull(numberLabelsDistance) && qFuzzyCompare(m_numberLabelsDistance, numberLabelsDistance))
            return;

        m_numberLabelsDistance = numberLabelsDistance;
        emit numberLabelsDistanceChanged(m_numberLabelsDistance);
        update();
    }

    void setNumberLabelsFontSize(float numberLabelsFontSize)
    {
        if (!qFuzzyIsNull(numberLabelsFontSize) && qFuzzyCompare(m_numberLabelsFontSize, numberLabelsFontSize))
            return;

        m_numberLabelsFontSize = numberLabelsFontSize;
        emit numberLabelsFontSizeChanged(m_numberLabelsFontSize);
        update();
    }

    void setHighlightColor(const QColor &color)
    {
        if (color == m_highlightColor)
            return;
        m_highlightColor = color;
        Q_EMIT highlightColorChanged();
        update();
    }

Q_SIGNALS:
    void valueChanged(float value);
    void minValueChanged(int minValue);
    void maxValueChanged(int maxValue);
    void mainTicksDeltaChanged(float mainTicksDelta);
    void minorTicksDeltaChanged(float minorTicksDelta);
    void mainTicksLengthChanged(float mainTicksLength);
    void minorTicksLengthChanged(float minorTicksLength);
    void bottomDirectionChanged(float bottomDirection);
    void ticksAngleChanged(float ticksAngle);
    void numberLabelsDeltaChanged(float numberLabelsDelta);
    void numberLabelsDistanceChanged(float numberLabelsDistance);
    void numberLabelsFontSizeChanged(float numberLabelsFontSize);
    void highlightColorChanged();

private:
    float m_value = 0.0;
    int m_minValue = 0;
    int m_maxValue = 240;

    float m_mainTicksDelta = 10.0;
    float m_minorTicksDelta = 2.0;

    float m_mainTicksLength = 10.0f;
    float m_minorTicksLength = 5.0f;

    float m_bottomDirection = 90;
    float m_ticksAngle = 280;
    float m_numberLabelsDelta = 20.0;

    float m_numberLabelsDistance = 0.18f;
    float m_numberLabelsFontSize = 24.0f;
    QColor m_highlightColor;
};

#endif // QNGAUGEITEM_H
