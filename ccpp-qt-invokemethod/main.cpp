
#include <stdio.h>
#include <QDebug>
#include <QObject>
#include <QMetaObject>
#include "testclass.hpp"

int main() {
    // Usage examples
    TestClass obj;

    // Call void method with parameter
    QMetaObject::invokeMethod(&obj, "myMethod", Q_ARG(int, 42));

    // Call method with return value
    int result;
    QMetaObject::invokeMethod(&obj, "returningMethod", 
                         Q_RETURN_ARG(int, result),
                         Q_ARG(QString, "Hello"));

    // With connection type (useful for threading)
    QMetaObject::invokeMethod(&obj, "myMethod", 
                         Qt::QueuedConnection,
                         Q_ARG(int, 123));


    QMetaObject::invokeMethod(&obj, "invalidmethod", 
                         Q_RETURN_ARG(int, result),
                         Q_ARG(QString, "Hello"));

 
}
