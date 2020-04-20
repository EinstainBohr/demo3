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

#ifndef QNWAVEITEM_H
#define QNWAVEITEM_H

#include "qnanoquickitem.h"
#include <QVector>

class QNanoQuickItemPainter;

class QNWaveItem: public QNanoQuickItem
{
    Q_OBJECT
    // Volume, between 0.0 ... 1.0
    Q_PROPERTY(qreal volume READ volume WRITE setVolume NOTIFY volumeChanged)
    // Volume multiplier, can be used to increase (or decrease) wave sizes. Default value 1.0.
    Q_PROPERTY(qreal volumeMultiplier READ volumeMultiplier WRITE setVolumeMultiplier NOTIFY volumeMultiplierChanged)
    // Controls wether to use temp animation or microphone for volume.
    Q_PROPERTY(bool dummyVolume READ dummyVolume WRITE setDummyVolume NOTIFY dummyVolumeChanged)
    Q_PROPERTY(QColor highlightColor READ highlightColor WRITE setHighlightColor NOTIFY highlightColorChanged)

public:
    QNWaveItem(QQuickItem *parent = nullptr);

    // Reimplement
    QNanoQuickItemPainter *createItemPainter() const Q_DECL_OVERRIDE Q_DECL_FINAL;

    qreal volume() const;
    qreal volumeMultiplier() const;
    bool dummyVolume() const;
    QColor highlightColor() const { return m_highlightColor; }

public Q_SLOTS:
    void setVolume(qreal volume);
    void setVolumeMultiplier(qreal multiplier);
    void setDummyVolume(bool on);

    void setHighlightColor(const QColor &color)
    {
        if (color == m_highlightColor)
            return;
        m_highlightColor = color;
        Q_EMIT highlightColorChanged();
        update();
    }

Q_SIGNALS:
    void volumeChanged(qreal volume);
    void volumeMultiplierChanged(qreal multiplier);
    void dummyVolumeChanged(bool on);
    void highlightColorChanged();

private:
    friend class QNWaveItemPainter;
    qreal m_volume = 0.6;
    qreal m_volumeMultiplier = 1.0;
    bool m_dummyVolume = true;
    QColor m_highlightColor;

};

#endif // QNWAVEITEM_H
