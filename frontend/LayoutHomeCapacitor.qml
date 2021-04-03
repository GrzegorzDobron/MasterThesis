import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0

Item {
    id:                         capacitorWindow

    Rectangle {
        id:                     capacitorWindowBackground
        anchors.fill:           parent
        anchors.leftMargin:     application.itemMargin
        anchors.rightMargin:    application.itemMargin
        color:                  application.swapWindow_BackgroundColor


        Button {
            id:                                 capacitorWindowButtonPreview
            highlighted:                        true
            anchors.verticalCenter:             parent.verticalCenter
            anchors.left:                       parent.left
            anchors.leftMargin:                 application.buttonPreview_Margin
            width:                              application.buttonPreview_Width
            height:                             application.buttonPreview_Heigh
            text:                               application.buttonPreview_Tittle
            onClicked:                          swipePage.setCurrentIndex(1)
        }
    }
}
