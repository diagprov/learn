

#pragma once
#include <iostream>
#include <QObject>
#include <QMetaObject>
#include <QDebug>
class TestClass : public QObject {
    Q_OBJECT
public slots:
    void myMethod(int value) {
        std::cout << "Called with: " << value << std::endl;
    }

    int returningMethod(const QString& text) {
        std::cout << "Text: " << text.toStdString() << std::endl;
        return text.length();
    }
};
