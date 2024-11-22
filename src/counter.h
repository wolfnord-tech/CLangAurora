#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class Counter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int value READ value WRITE setValue NOTIFY valueChanged)
public:
    explicit Counter(QObject *parent = nullptr);
    int value() const;
//    Q_INVOKABLE void printValue();
public slots:
    void setValue(int value);
    void resetValue();
signals:
    void valueChanged();
private:
    int m_value;
};

#endif // COUNTER_H
