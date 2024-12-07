#include "mainwindow.h"
#include "lave.h"
#include "fridge.h"
#include "ui_mainwindow.h"
#include "ingredients.h"
#include <QGraphicsPixmapItem>
#include <QTimer>
#include <QTimeLine>
#include <cstdlib>
#include <QDir>
#include <QTextStream>
#include <QDateTime>



MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent),
    ui(new Ui::MainWindow),
    isRunning(false),
    simulationTime(0),
    timeScale(1),
    diningScene(new QGraphicsScene(this)),
    kitchenScene(new QGraphicsScene(this)),
    timer(new QTimer(this)),
    logFile(QCoreApplication::applicationDirPath() + "/log/simulation.log")
{
    ui->setupUi(this);

    if (connectToDatabase()) {
        loadMenuData();
         loadStockInfo();
        loadInventoryData();
         logMessage("Base de données connectée");
    }





    // table essaie0
    Lave *lave1 = new Lave(1, 1, ":img/plaque.jpeg");
    lave1->setPosition(100, 400);
    laveController.addLave(lave1);
    kitchenScene->addItem(lave1->getGraphicsItem());

    Lave *lave2 = new Lave(2, 2, ":img/plaque.jpeg");
    lave1->setPosition(100, 100);
    laveController.addLave(lave2);
    kitchenScene->addItem(lave2->getGraphicsItem());


    // Fridge *fridge1 = new Fridge(1, 4, ":img/frigo.png");
    // fridge1->setPosition(300, 200);
    // fridgeController.addFridge(fridge1);
    // kitchenScene->addItem(fridge1->getGraphicsItem());

    // Table *table4 = new Table(4, 1, ":build/Desktop_Qt_MinGW_64_bit_31ccaa-Release/release/img/table_3.png");
    // table4->setPosition(600, 20);
    // tableController.addTable(table4);
    // kitchenScene->addItem(table4->getGraphicsItem());



    // Configuration des scènes
    ui->diningAreaView->setScene(diningScene);
    ui->kitchenAreaView->setScene(kitchenScene);

    // Connexion des boutons
    connect(ui->stratButton, &QPushButton::clicked, this, &MainWindow::startSimulation);
    connect(ui->pauseButton, &QPushButton::clicked, this, &MainWindow::pauseSimulation);
    connect(ui->stopButton, &QPushButton::clicked, this, &MainWindow::stopSimulation);
    connect(ui->accelButton, &QPushButton::clicked, this, &MainWindow::accelSimulation);
    // Connecter le signal dataChanged du modèle au slot updateUI de la fenêtre
    // connect(ingredients, &Ingredients::dataChanged, this, &MainWindow::updateUI);

    // Exemple de bouton pour ajouter des ingrédients
    // connect(ui->livraisonButton, &QPushButton::clicked, ingredients, &Ingredients::addIngredients);

    // Configuration du timer
    connect(timer, &QTimer::timeout, this, &MainWindow::updateTime);

    // Configuration du fichier log
    QDir logDir(QCoreApplication::applicationDirPath() + "/log");
    if (!logDir.exists()) {
        logDir.mkpath(".");
    }

    if (!logFile.open(QIODevice::Append | QIODevice::Text)) {
        qDebug() << "Erreur : Impossible d'ouvrir le fichier de log !";
    } else {
        logMessage("Application démarrée");

    }

}


bool MainWindow::connectToDatabase() {
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName(QCoreApplication::applicationDirPath() + "/database/restaurant.db");

    if (!db.open()) {
        qDebug() << "Erreur de connexion à la BD !:" << db.lastError().text();
        return false;
    }
   // qDebug() << "BD connectée.";
    return true;
}



void MainWindow::loadMenuData() {
    QSqlQuery query("SELECT nom FROM menu");

    if (!query.exec()) {
        qDebug() << "Failed to retrieve data from the menu table:" << query.lastError().text();
        return;
    }

    ui->menuListWidget->clear();

    while (query.next()) {
        QString menuName = query.value(0).toString();
        QListWidgetItem *item = new QListWidgetItem(menuName, ui->menuListWidget);
        ui->menuListWidget->addItem(item);
    }
}



void MainWindow::loadStockInfo() {
    QSqlQuery query("SELECT nom, quantite FROM ingredients");

    if (!query.exec()) {
        qDebug() << "Les informations du stock d'ingrédients ne sont pas chargées" << query.lastError().text();
        return;
    }

    QString html = R"(
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
        <html><head><meta name="qrichtext" content="1" /><meta charset="utf-8" />
        <style type="text/css">
            p, li { white-space: pre-wrap; }
            hr { height: 1px; border-width: 0; }
            li.unchecked::marker { content: "\2610"; }
            li.checked::marker { content: "\2612"; }
</style></head><body style=" font-family:'Segoe UI'; font-size:12px; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-family:'MS Shell Dlg 2'; font-size:8.25pt;">Niveaux de stock:</span>
        </p>
    )";

    while (query.next()) {
        QString ingredientName = query.value(0).toString();
        int quantity = query.value(1).toInt();

        html += QString(R"(
        <p style="margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
            <span style="font-family:'MS Shell Dlg 2'; font-size:8.25pt;">%1 (%2)</span>
        </p>
    )").arg(ingredientName).arg(quantity);
    }


    html += R"(
        </body></html>
    )";

    ui->stockInfoTextBrowser->setHtml(html);

}


void MainWindow::loadInventoryData() {
    QSqlQuery query("SELECT nom_item, quantite FROM inventaire");

    if (!query.exec()) {
        qDebug() << "Erreur lors de la récupération des données de l'inventaire:" << query.lastError().text();
        return;
    }

    QString html = R"(
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
        <html>
        <head>
            <meta name="qrichtext" content="1" />
            <meta charset="utf-8" />
            <style type="text/css">
                p, li { white-space: pre-wrap; }
                hr { height: 1px; border-width: 0; }
            </style>
        </head>
        <body style=" font-family:'Segoe UI'; font-size:12px; font-weight:400; font-style:normal;">
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
                <span style=" font-family:'MS Shell Dlg 2'; font-size:8.25pt;">Inventaire:</span>
            </p>
    )";

    // Parcourir les résultats et les ajouter au HTML
    while (query.next()) {
        QString itemName = query.value(0).toString();
        int quantity = query.value(1).toInt();

        html += QString(R"(
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
                <span style=" font-family:'MS Shell Dlg 2'; font-size:8.25pt;">%1 (%2)</span>
            </p>
        )").arg(itemName).arg(quantity);
    }

    html += R"(
        </body>
        </html>
    )";

    // Afficher le HTML dans le widget tableInfoTextBrowser
    ui->tableInfoTextBrowser->setHtml(html);
}



MainWindow::~MainWindow()
{
    delete ui;
    delete diningScene;
    delete kitchenScene;

    if (logFile.isOpen()) {
        logMessage("Application terminée");
        logFile.close();
    }

    if (timer) {
        delete timer;
    }

    // Fermeture de la BD à l'arret
    if (db.isOpen()) {
        db.close();
    }
}

void MainWindow::paintEvent(QPaintEvent *event) {
    Q_UNUSED(event);
    // No need to override paintEvent for QGraphicsView
}



void MainWindow::startSimulation()
{
    if (!isRunning) {
        isRunning = true;
        timer->start(1000); // 1 seconde de temps réel = 1 seconde de simulation
        qDebug() << "Simulation démarrée";

        // Création de groupes de clients
        for (int i = 0; i < 5; ++i) { // 5 groupes par exemple
            int groupSize = rand() % 8 + 1; // Taille entre 1 et 8
            QList<QGraphicsPixmapItem *> group;  // Liste pour les clients du groupe

            for (int j = 0; j < groupSize; ++j) {
                // Créez un client avec un chemin d'image et un identifiant unique
                Client *client = new Client(":build/Desktop_Qt_MinGW_64_bit_31ccaa-Release/release/img/client_2.png", i * 2 + j);
                client->setPosition(0, i * 20 + j * 10, 60.0); // Position initiale
                diningScene->addItem(client->getGraphicsItem());
                clientController.addClient(client);
                group.append(client->getGraphicsItem()); // Ajoutez le client au groupe
            }

            // Animation pour le groupe
            int duration = rand() % 3000 + 8000; //
            QTimeLine *timeline = new QTimeLine(duration, this);
            timeline->setFrameRange(0, 100);

            connect(timeline, &QTimeLine::frameChanged, this, [=](int frame) {
                for (int k = 0; k < group.size(); ++k) {
                    int randomOffsetX = rand() % 20 - 8; // Décalage aléatoire X
                    int randomOffsetY = rand() % 5 - 15; // Décalage aléatoire Y

                    int x = frame * 5 + randomOffsetX; // Mouvement horizontal
                    int y = 50 + i * 60 + k * 10 + randomOffsetY; // Position verticale
                    group[k]->setPos(x, y); // Déplace le client dans le groupe
                }
            });

            connect(timeline, &QTimeLine::finished, this, [=, this]() {
                for (auto clientItem : group) {
                    Client *client = clientController.findClientById(clientItem->data(0).toInt());
                    if (client) {
                        client->showOrderPopup("Commandez vos plats", diningScene);
                    }
                }
                qDebug() << QString("Groupe %1 invité à passer commande").arg(i + 1);
            });

            timeline->start();
            clientTimelines.append(timeline);
        }
    }
}

void MainWindow::pauseSimulation()
{
    if (isRunning) {
        isRunning = false;
        timer->stop();

        for (auto timeline : clientTimelines) {
            if (timeline) {
                timeline->setPaused(true);
            }
        }

        logMessage("Simulation mise en pause");
    }
}

void MainWindow::stopSimulation()
{
    if (isRunning) {
        pauseSimulation();
    }

    simulationTime = 0;
    ui->timeButton->setText("Heure : 00:00");

    // Nettoyage de la scène
    diningScene->clear();


    // Supprimer les timelines
    for (auto timeline : clientTimelines) {
        delete timeline;
    }
    clientTimelines.clear();

    // Supprimer les items clients
    for (auto client : clientItems) {
        delete client;
    }
    clientItems.clear();
    logMessage("Simulation arrêtée");
}

void MainWindow::updateTime()
{
    simulationTime += timeScale;
    int hours = simulationTime / 3600;
    int minutes = (simulationTime % 3600) / 60;
    int seconds = simulationTime % 60;

    ui->timeButton->setText(QString("Heure : %1:%2:%3")
                                .arg(hours)
                                .arg(minutes, 2, 10, QChar('0'))
                                .arg(seconds, 2, 10, QChar('0')));

    logMessage(QString("Temps mis à jour : %1:%2:%3")
                   .arg(hours)
                   .arg(minutes, 2, 10, QChar('0'))
                   .arg(seconds, 2, 10, QChar('0')));
}

void MainWindow::accelSimulation()
{
    timeScale = (timeScale == 1) ? 2 : 1; // Basculer entre vitesse normale et accélérée
    timer->setInterval(1000 / timeScale); // Ajuster l'intervalle du timer

    for (auto timeline : clientTimelines) {
        if (timeline) {
            timeline->setDuration(timeline->duration() / timeScale);
        }
    }

    logMessage(timeScale == 2 ? "Mode simulation accéléré activé" : "Mode simulation normal activé");
}

void MainWindow::showPopup(const QString &message, QGraphicsItem *client)
{
    auto popup = new QGraphicsTextItem(message);
    popup->setDefaultTextColor(Qt::blue);
    popup->setFont(QFont("Arial", 12));
    popup->setZValue(1); // Affichage au-dessus
    popup->setPos(client->x(), client->y() - 30); // Position au-dessus du client

    diningScene->addItem(popup);

    QTimer::singleShot(2000, [=, this]() {
        diningScene->removeItem(popup);
        delete popup;
    });
}

void MainWindow::logMessage(const QString &message)
{
    if (logFile.isOpen()) {
        QTextStream out(&logFile);
        out << QDateTime::currentDateTime().toString("yyyy-MM-dd HH:mm:ss") << " - " << message << "\n";
    }
    qDebug() << message;

}





void MainWindow::updateIngredients() {
    // Example of modifying the database and triggering UI update
    QSqlQuery query;
    query.exec("UPDATE ingredients SET quantite = quantite + 100");

    // Optionally, you can force a manual update after a change
    // updateDatabase();
}




// void updateUI() {
//     // Exemple de mise à jour de l'UI avec la nouvelle liste des ingrédients
//     QSqlQuery query("SELECT nom, quantite FROM ingredients");

//     if (query.exec()) {
//         ui->stockInfoTextBrowser->clear();
//         while (query.next()) {
//             QString name = query.value(0).toString();
//             int quantity = query.value(1).toInt();
//             ui->stockInfoTextBrowser->append(QString("%1 (%2)").arg(name).arg(quantity));
//         }
//     } else {
//         qDebug() << "Erreur mise à jour : " << query.lastError().text();
//     }

// }


