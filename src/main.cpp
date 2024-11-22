#include <auroraapp.h>
#include <QtQuick>
#include "counter.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<Counter>("module.counter", 1, 0, "Counter");
    QScopedPointer<QGuiApplication> application(Aurora::Application::application(argc, argv));
    application->setOrganizationName(QStringLiteral("pro.wolfnord"));
    application->setApplicationName(QStringLiteral("CNew"));

    QScopedPointer<QQuickView> view(Aurora::Application::createView());
    view->setSource(Aurora::Application::pathTo(QStringLiteral("qml/CNew.qml")));
    view->show();

    return application->exec();
}
