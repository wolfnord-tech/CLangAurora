#include "counter.h"
#include <QDebug>

Counter::Counter(QObject *parent) :
    QObject(parent),
    m_value(0)
{ }

int Counter::value() const {
    return m_value;
}


void Counter::setValue(int value) {
    if (m_value == value)
        return;
    m_value=value;
    emit valueChanged();
}

void Counter::resetValue()
{
    setValue(0);
}

//void Counter::printValue() {
//    qDebug << m_value;
//}
