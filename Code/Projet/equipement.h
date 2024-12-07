#ifndef EQUIPEMENT_H
#define EQUIPEMENT_H

#include <QString>
#include <QGraphicsPixmapItem>

class Equipement {
private:
    QString nom;
    QString imagePath;
    QGraphicsPixmapItem* pixmapItem;

public:
    Equipement(const QString& nom, const QString& imagePath);

    QGraphicsPixmapItem* getGraphicsItem() const;
    void setPosition(int x, int y);
};
#endif // EQUIPEMENT_H
