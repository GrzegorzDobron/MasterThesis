import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs.qml 1.0

Item {
    id:                                         capacitorWindow

    Rectangle {
        id:                                     capacitorWindowBackground
        color:                                  application.swapWindow_BackgroundColor
        anchors.fill:                           parent
        anchors.leftMargin:                     -15
        anchors.rightMargin:                    -15

        Button {
            id:                                 capacitorWindowButtonPreview
            x:                                  application.buttonPreview_x
            y:                                  application.buttonPreview_y
            width:                              application.buttonPreview_Width
            height:                             application.buttonPreview_Heigh
            text:                               application.buttonPreview_Tittle
            checked:                            true
            checkable:                          true
            autoExclusive:                      true
            highlighted:                        true
            flat:                               true
            autoRepeat:                         true
            onClicked:                          swipePage.setCurrentIndex(1)
        }
    }
}