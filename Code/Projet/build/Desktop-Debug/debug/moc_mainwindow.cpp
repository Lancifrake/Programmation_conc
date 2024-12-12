/****************************************************************************
** Meta object code from reading C++ file 'mainwindow.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.8.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../mainwindow.h"
#include <QtGui/qtextcursor.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QList>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mainwindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.8.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {
struct qt_meta_tag_ZN10MainWindowE_t {};
} // unnamed namespace


#ifdef QT_MOC_HAS_STRINGDATA
static constexpr auto qt_meta_stringdata_ZN10MainWindowE = QtMocHelpers::stringData(
    "MainWindow",
    "startSimulation",
    "",
    "pauseSimulation",
    "stopSimulation",
    "accelSimulation",
    "updateStockLevelsProgressBar",
    "updateTableSeatsProgressBar",
    "onOrderAdded",
    "clientId",
    "tableId",
    "onOrderRemoved",
    "handleSocketReadyRead",
    "handleClientCommand",
    "QList<OrderItem>",
    "items",
    "serveOrder",
    "on_paramButton_clicked",
    "on_livraisonButton_clicked",
    "on_alertButton_clicked"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA

Q_CONSTINIT static const uint qt_meta_data_ZN10MainWindowE[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   98,    2, 0x08,    1 /* Private */,
       3,    0,   99,    2, 0x08,    2 /* Private */,
       4,    0,  100,    2, 0x08,    3 /* Private */,
       5,    0,  101,    2, 0x08,    4 /* Private */,
       6,    0,  102,    2, 0x08,    5 /* Private */,
       7,    0,  103,    2, 0x08,    6 /* Private */,
       8,    2,  104,    2, 0x08,    7 /* Private */,
      11,    1,  109,    2, 0x08,   10 /* Private */,
      12,    0,  112,    2, 0x08,   12 /* Private */,
      13,    3,  113,    2, 0x08,   13 /* Private */,
      16,    1,  120,    2, 0x08,   17 /* Private */,
      17,    0,  123,    2, 0x08,   19 /* Private */,
      18,    0,  124,    2, 0x08,   20 /* Private */,
      19,    0,  125,    2, 0x08,   21 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,    9,   10,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, 0x80000000 | 14,    9,   10,   15,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

Q_CONSTINIT const QMetaObject MainWindow::staticMetaObject = { {
    QMetaObject::SuperData::link<QMainWindow::staticMetaObject>(),
    qt_meta_stringdata_ZN10MainWindowE.offsetsAndSizes,
    qt_meta_data_ZN10MainWindowE,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_tag_ZN10MainWindowE_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<MainWindow, std::true_type>,
        // method 'startSimulation'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'pauseSimulation'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'stopSimulation'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'accelSimulation'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'updateStockLevelsProgressBar'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'updateTableSeatsProgressBar'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'onOrderAdded'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'onOrderRemoved'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'handleSocketReadyRead'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'handleClientCommand'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QList<OrderItem> &, std::false_type>,
        // method 'serveOrder'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'on_paramButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_livraisonButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'on_alertButton_clicked'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<MainWindow *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->startSimulation(); break;
        case 1: _t->pauseSimulation(); break;
        case 2: _t->stopSimulation(); break;
        case 3: _t->accelSimulation(); break;
        case 4: _t->updateStockLevelsProgressBar(); break;
        case 5: _t->updateTableSeatsProgressBar(); break;
        case 6: _t->onOrderAdded((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2]))); break;
        case 7: _t->onOrderRemoved((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 8: _t->handleSocketReadyRead(); break;
        case 9: _t->handleClientCommand((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QList<OrderItem>>>(_a[3]))); break;
        case 10: _t->serveOrder((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 11: _t->on_paramButton_clicked(); break;
        case 12: _t->on_livraisonButton_clicked(); break;
        case 13: _t->on_alertButton_clicked(); break;
        default: ;
        }
    }
}

const QMetaObject *MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ZN10MainWindowE.stringdata0))
        return static_cast<void*>(this);
    return QMainWindow::qt_metacast(_clname);
}

int MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 14)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 14;
    }
    return _id;
}
QT_WARNING_POP
