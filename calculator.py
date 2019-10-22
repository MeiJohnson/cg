#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
from PyQt5.QtWidgets import QMainWindow, QPushButton, QApplication
from PyQt5 import QtWidgets
import lab1
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot

class CalcApp(QtWidgets.QMainWindow, lab1.Ui_MainWindow):
    def __init__(self):
        # Это здесь нужно для доступа к переменным, методам
        # и т.д. в файле 1lab.py
        super().__init__()
        self.setupUi(self)  # Это нужно для инициализации дизайна

        @pyqtSlot(int, int)
        def sum():
            arg1 = int(self.lineEdit.text())
            arg2 = int(self.lineEdit_2.text())
            # складываем два аргумента и испускаем сигнал

            self.lineEdit_3.setText(str(arg1 + arg2)) # Выводим результат функции в текстовое поле
        """
        # слот для вычитания двух чисел
        @pyqtSlot(int, int)
        def sub(self, arg1, arg2):
            # вычитаем аргументы и испускаем сигнал
            self.subResult.emit(arg1 - arg2)
        """
        self.pushButton.clicked.connect(sum)

def main():
    app = QtWidgets.QApplication(sys.argv)  # Новый экземпляр QApplication
    window = CalcApp()  # Создаём объект класса CalcApp
    window.show()  # Показываем окно
    app.exec_()  # и запускаем приложение

if __name__ == '__main__':
    main()
