#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuick3D/qquick3d.h>

int main(int argc, char *argv[])
{
#if 0 // For B2Qt and QNX
    qputenv("QT_QPA_EGLFS_HIDECURSOR", "1");
    qputenv("QT_QPA_EGLFS_DISABLE_INPUT", "1");
    qputenv("QT_QPA_EGLFS_WIDTH", "1920");
    qputenv("QT_QPA_EGLFS_HEIGHT", "720");
//    qputenv("QT_QPA_EGLFS_PHYSICAL_WIDTH", "300");
//    qputenv("QT_QPA_EGLFS_PHYSICAL_HEIGHT", "170");
    qputenv("QSG_RENDER_LOOP", "threaded");

    // Debugging
//    qputenv("QT_QPA_EGLFS_DEBUG", "1");
//    qputenv("QSG_INFO", "1");
//    qputenv("QT_LOGGING_RULES", "qt.qpa.*=true");

    // Disable all extra logging
//    qputenv("QT_LOGGING_RULES", "*=false");
#endif
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
//    QCoreApplication::setAttribute(Qt::AA_UseOpenGLES); // For testing ES2 on Windows

//    qputenv("QUICK3D_FORCE_OPENGL_BACKEND", "1"); // Force ES2 backend
//    qputenv("QUICK3D_FORCE_OPENGL_BACKEND", "2"); // Force GL3 backend
//    qputenv("QUICK3D_FORCE_OPENGL_BACKEND", "3"); // Force GL4 backend

//    qputenv("QUICK3D_RENDERTIMES", "1");

    QGuiApplication app(argc, argv);

    QSurfaceFormat::setDefaultFormat(QQuick3D::idealSurfaceFormat());

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
