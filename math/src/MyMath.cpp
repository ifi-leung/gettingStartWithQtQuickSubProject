#include "MyMath.h"

myMath::myMath(QObject *parent) : QObject(parent)
{}

QVariant myMath::sum(QVariant a, QVariant b)
{
  return a.toInt() + b.toInt();
}
