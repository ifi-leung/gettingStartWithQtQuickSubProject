#ifndef MYMATH_H
#define MYMATH_H

#include <QObject>
#include <QVariant>

class myMath : public QObject
{
    Q_OBJECT
public:
    explicit myMath(QObject *parent = nullptr);

    Q_INVOKABLE QVariant sum(QVariant a, QVariant b);
};

#endif // MYMATH_H
