#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QtQuick3D/qquick3d.h>
#include "fileio.h"

#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QSurfaceFormat::setDefaultFormat(QQuick3D::idealSurfaceFormat(4));

    QQuickView view;
    QQmlEngine *engine = view.engine();

    qmlRegisterType<FileIO>("FileHelper", 1, 0, "FileIO");

    engine->addImportPath("qrc:/BenchmarkUI/imports");
#ifdef Q_OS_ANDROID
    engine->rootContext()->setContextProperty("android", true);
#else
    engine->rootContext()->setContextProperty("android", false);
#endif
#ifdef SIMPLE_ASSETS
    engine->rootContext()->setContextProperty("complex_models", false);
#else
    engine->rootContext()->setContextProperty("complex_models", true);
#endif
    view.setSource(QUrl("qrc:/BenchmarkUI/BenchmarkUI.qml"));

    view.setWidth(1920);
    view.setHeight(1080);
    view.setColor("#cccccc");

    if (!view.errors().isEmpty())
        return -1;

    view.show();

    QObject::connect(engine, &QQmlEngine::quit, &app, &QGuiApplication::quit);

    app.exec();
}
