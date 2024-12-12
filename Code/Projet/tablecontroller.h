#ifndef TABLECONTROLLER_H
#define TABLECONTROLLER_H

#include <QVector>
#include "table.h"

class TableController : public QObject {
    Q_OBJECT

public:
    TableController(QObject *parent = nullptr);
    void addTable(Table *table);
    Table *findTableById(int tableId);
    Table* findAvailableTable(int groupSize);
    QVector<Table*> getTables() const;

    int getTableCount() const; // Ajouté

signals:
    void tableUpdated(); // Ajouté


private:
    QVector<Table*> tables; // Liste des tables dans le restaurant
};

#endif // TABLECONTROLLER_H
