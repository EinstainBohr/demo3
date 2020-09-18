#include "fileio.h"
#include <QFile>
#include <QDebug>

QString FileIO::read()
{
    if (m_url.isEmpty())
        return {};

    QFile file(m_url.toLocalFile());
    if (!file.exists()) {
        qWarning() << "File" << file.fileName() << "does not exist";
        return {};
    }
    if (file.open(QIODevice::ReadOnly)) {
        QTextStream stream(&file);
        m_text = stream.readAll();
    }

    return m_text;
}

void FileIO::write(bool append)
{
    if (m_url.isEmpty())
        return;

    QFile file(m_url.toLocalFile());
    if (file.open(QIODevice::WriteOnly | (append ? QIODevice::Append : QIODevice::NewOnly))) {
        QTextStream stream(&file);
        stream << m_text;
        qDebug() << "Wrote file" << file.fileName();
    } else {
        qWarning() << "Could not write file" << file.fileName();
    }
}
