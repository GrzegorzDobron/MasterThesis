import sys
import os

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot


class function(QObject):
    @Slot()
    def ex(self):
        print("rer")


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    function = function()

    context = engine.rootContext()
    context.setContextProperty("con", function)

    engine.load(os.path.join(os.path.dirname(__file__), "front-end/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
