#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
from PyQt5 import QtGui
from PyQt5.QtWidgets import QMainWindow, QPushButton, QApplication
from PyQt5 import QtWidgets
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot
from PyQt5.QtWidgets import QWidget, QApplication
from PyQt5.QtGui import QPainter, QColor, QFont, QBrush, QPen, QPainterPath
from PyQt5.QtCore import Qt



class MainWindow(QWidget):

    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.text = 'Hello'
        self.setGeometry(200, 200, 280, 170)
        self.setWindowTitle('Draw triangle')
        self.show()

    def paintEvent(self, event):
        qp = QPainter()
        path = QPainterPath()
        qp.begin(self)
        self.drawTriangle(event, qp, path)
        qp.end()

    def drawTriangle(self, event, qp, pth):
        qp.setPen(Qt.blue)
        pth.drawLine(50, 400)
        pth.lineTo(350, 100)
        pth.lineTo(10, 25)
        qp.drawPath(pth)


if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    sys.exit(app.exec_())
