# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'risuemtreug.ui'
#
# Created by: PyQt5 UI code generator 5.13.1
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_mainWindow(object):
    def setupUi(self, mainWindow):
        mainWindow.setObjectName("mainWindow")
        mainWindow.resize(500, 500)
        mainWindow.setMaximumSize(QtCore.QSize(500, 500))
        self.centralwidget = QtWidgets.QWidget(mainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.secondX = QtWidgets.QLineEdit(self.centralwidget)
        self.secondX.setGeometry(QtCore.QRect(50, 440, 50, 50))
        self.secondX.setMinimumSize(QtCore.QSize(50, 50))
        self.secondX.setMaximumSize(QtCore.QSize(50, 50))
        self.secondX.setObjectName("secondX")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setGeometry(QtCore.QRect(10, 440, 131, 51))
        self.label.setObjectName("label")
        self.secondY = QtWidgets.QLineEdit(self.centralwidget)
        self.secondY.setGeometry(QtCore.QRect(150, 440, 50, 50))
        self.secondY.setMinimumSize(QtCore.QSize(50, 50))
        self.secondY.setMaximumSize(QtCore.QSize(50, 50))
        self.secondY.setText("")
        self.secondY.setObjectName("secondY")
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setGeometry(QtCore.QRect(120, 440, 131, 51))
        self.label_2.setObjectName("label_2")
        self.firstX = QtWidgets.QLineEdit(self.centralwidget)
        self.firstX.setGeometry(QtCore.QRect(50, 380, 50, 50))
        self.firstX.setMinimumSize(QtCore.QSize(50, 50))
        self.firstX.setMaximumSize(QtCore.QSize(50, 50))
        self.firstX.setObjectName("firstX")
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setGeometry(QtCore.QRect(120, 380, 131, 51))
        self.label_3.setObjectName("label_3")
        self.label_4 = QtWidgets.QLabel(self.centralwidget)
        self.label_4.setGeometry(QtCore.QRect(10, 380, 131, 51))
        self.label_4.setObjectName("label_4")
        self.firstY = QtWidgets.QLineEdit(self.centralwidget)
        self.firstY.setGeometry(QtCore.QRect(150, 380, 50, 50))
        self.firstY.setMinimumSize(QtCore.QSize(50, 50))
        self.firstY.setMaximumSize(QtCore.QSize(50, 50))
        self.firstY.setText("")
        self.firstY.setObjectName("firstY")
        self.thirdX = QtWidgets.QLineEdit(self.centralwidget)
        self.thirdX.setGeometry(QtCore.QRect(270, 440, 50, 50))
        self.thirdX.setMinimumSize(QtCore.QSize(50, 50))
        self.thirdX.setMaximumSize(QtCore.QSize(50, 50))
        self.thirdX.setObjectName("thirdX")
        self.label_5 = QtWidgets.QLabel(self.centralwidget)
        self.label_5.setGeometry(QtCore.QRect(340, 440, 131, 51))
        self.label_5.setObjectName("label_5")
        self.label_6 = QtWidgets.QLabel(self.centralwidget)
        self.label_6.setGeometry(QtCore.QRect(230, 440, 131, 51))
        self.label_6.setObjectName("label_6")
        self.thirdY = QtWidgets.QLineEdit(self.centralwidget)
        self.thirdY.setGeometry(QtCore.QRect(370, 440, 50, 50))
        self.thirdY.setMinimumSize(QtCore.QSize(50, 50))
        self.thirdY.setMaximumSize(QtCore.QSize(50, 50))
        self.thirdY.setText("")
        self.thirdY.setObjectName("thirdY")
        self.drawBtn = QtWidgets.QPushButton(self.centralwidget)
        self.drawBtn.setGeometry(QtCore.QRect(270, 380, 151, 34))
        self.drawBtn.setObjectName("drawBtn")
        mainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(mainWindow)
        QtCore.QMetaObject.connectSlotsByName(mainWindow)

    def retranslateUi(self, mainWindow):
        _translate = QtCore.QCoreApplication.translate
        mainWindow.setWindowTitle(_translate("mainWindow", "Рисуем треугольник!"))
        self.label.setText(_translate("mainWindow", "     X"))
        self.label_2.setText(_translate("mainWindow", "    Y"))
        self.label_3.setText(_translate("mainWindow", "    Y"))
        self.label_4.setText(_translate("mainWindow", "     X"))
        self.label_5.setText(_translate("mainWindow", "    Y"))
        self.label_6.setText(_translate("mainWindow", "     X"))
        self.drawBtn.setText(_translate("mainWindow", "Нарисовать!"))
