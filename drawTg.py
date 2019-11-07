# pylint: disable=missing-docstring
# pylint: disable=no-nam# pylint: disable=missing-docstring
# pylint: disable=no-name-in-module
# pylint: disable=unused-importe-in-module
# pylint: disable=unused-import

import sys
import ristr
from PyQt5 import *
from PyQt5 import QtCore, QtGui, QtWidgets
   
class MainWin(QtWidgets.QMainWindow, ristr.Ui_mainWindow):

    def __init__(self):
        super().__init__()
        self.setupUi(self)
        self.drawBtn.clicked.connect(drawWind.paintEvent)

    def paintEvent(self):
        x1 = int(self.firstX.text())
        y1 = int(self.firstY.text())
        x2 = int(self.secondX.text())
        y2 = int(self.secondY.text())
        x3 = int(self.thirdX.text())
        y3 = int(self.thirdY.text())
        coord = [ x1,y1, x2, y2, x3, y3 ]
        painter = QtGui.QPainter()
        painter.begin(drawWind)
        painter.setPen(Qt.red)
        polygon = QtGui.QPolygon(coord)
        print(polygon.point(0))
        print(polygon.point(1))
        print(polygon.point(2))
        painter.end()
    

    
class drawWind(QtWidgets.QFrame):
    def __init__(self, parent = MainWin):
        QtWidgets.QWidget.__init__(self, parent)
        self.setStyleSheet('QWidget {Background-color: %s}'% QColor('white').name())
        self.pix = QPixmap()
        self.pix.fill(QColor(0, 0, 0, 0))

     
    
if __name__=="__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    myApp = MainWin()
    myApp.show()
    sys.exit(app.exec_())