#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
from PyQt5 import QtGui
from PyQt5 import QtWidgets
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
from PyQt5.QtGui import QPainter, QColor, QFont, QBrush, QPen, QPainterPath
import rist


class MainWindow(QtWidgets.QMainWindow, rist.Ui_mainWindow):

    def __init__(self):
        super().__init__()
        self.setupUi(self)
        # self.resize(400,200)
        self.drawBtn.clicked.connect(self.paintEvent)

    def paintEvent(self,ui):
        qp = QPainter()
        path = QPainterPath()
        qp.begin(self)
        self.drawTriangle(qp, path)
        qp.end()
        

    def drawTriangle(self, qp, pth):
        x1 = int(self.firstX.text())
        y1 = int(self.firstY.text())
        x2 = int(self.secondX.text())
        y2 = int(self.secondY.text())
        x3 = int(self.thirdX.text())
        y3 = int(self.thirdY.text())
        qp.setPen(Qt.black)
        qp.drawLine(x1, y1, x2, y2)
        qp.setPen(Qt.red)
        qp.drawLine(x2, y2, x3, y3)
        qp.setPen(Qt.blue)
        qp.drawLine(x3, y3, x1, y1)
        qp.drawPath(pth)


def main():
    app = QtWidgets.QApplication(sys.argv)
    window = MainWindow()
    window.show()
    app.exec_()

if __name__ == '__main__':
    main()
