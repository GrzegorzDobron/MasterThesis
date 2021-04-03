import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0

Item {
    id:                                 mainWindow

    Rectangle {
        id:                             mainWindowBackground
        anchors.topMargin:              0
        anchors.fill:                   parent
        color:                          application.swapWindow_BackgroundColor

        Column {
            id:                         mainWindowButtonColumn
            anchors.verticalCenter:     parent.verticalCenter
            anchors.left:               parent.left
            width:                      application.mainWindowColumn_Width
            height:                     application.mainWindowColumn_Heigh
            spacing:                    application.mainWindowButton_Spacing
            anchors.leftMargin:         application.mainWindowButton_LeftMargin

            Button {
                id:                     swipeHomeButtonProject
                highlighted:            true
                width:                  application.mainWindowButton_Width
                height:                 application.mainWindowButton_Heigh
                text:                   application.mainWindowButtonProject_Tittle
                font.pointSize:         application.mainWindowButton_Font
                onClicked:              swipePage.setCurrentIndex(1)

            }

            Button {
                id:                     swipeHomeButtonExit
                highlighted:            true
                width:                  application.mainWindowButton_Width
                height:                 application.mainWindowButton_Heigh
                text:                   application.mainWindowButtonExit_Tittle
                font.pointSize:         application.mainWindowButton_Font
                onClicked:              static.exit()
            }
        }

        Image {
            id:                         welcomelogo
            anchors.verticalCenter:     parent.verticalCenter
            anchors.right:              parent.right
            width:                      application.mainWindowLogo_Width
            source:                     application.mainWindowImageLogo_Path
            anchors.rightMargin:        application.mainWindowLogo_RightMargin
        }
    }
}
