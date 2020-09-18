#include <QUrl>
#include <QObject>

class FileIO : public QObject {
    Q_PROPERTY(QUrl source READ source WRITE setSource)
    Q_PROPERTY(QString text READ text WRITE setText)
    Q_OBJECT

public:
    Q_INVOKABLE QString read();
    Q_INVOKABLE void write(bool append = false);

    QString text() const { return m_text; }
    void setText(const QString &text) { m_text = text; }

    QUrl source() const { return m_url; }
    void setSource(const QUrl &url) { m_url = url; }

private:
    QString m_text;
    QUrl m_url;
};
