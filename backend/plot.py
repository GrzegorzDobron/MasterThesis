import pyqtgraph as pg
import numpy as np

def plot():
    x = np.arange(1000)
    y = np.random.normal(size=(3, 1000))
    plotWidget = pg.plot(title="Three plot curves")
    for i in range(3):
        plotWidget.plot(x, y[i], pen=(i,3))