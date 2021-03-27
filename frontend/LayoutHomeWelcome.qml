import QtQuick 2.11
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.12
import QtQuick.Window 2.2
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs.qml 1.0

Item {
    id:                                         mainWindow

    Rectangle {
        id:                                     mainWindowBackground
        anchors.fill:                           parent
        anchors.topMargin:                      0
        color:                                  application.swapWindow_BackgroundColor

        Column {
            id:                                 mainWindowButtonColumn
            y:                                  192
            width:                              171
            height:                             105
            anchors.verticalCenter:             parent.verticalCenter
            anchors.left:                       parent.left
            spacing:                            6
            anchors.leftMargin:                 70

            Button {
                id:                             swipeHomeButtonProject
                width:                          application.mainWindowButton_Width
                height:                         application.mainWindowButton_Heigh
                text:                           application.mainWindowButtonProject_Tittle
                focusPolicy:                    Qt.ClickFocus
                layer.enabled:                  false
                font.pointSize:                 application.mainWindowButton_Font
                focus:                          true
                antialiasing:                   true
                display:                        AbstractButton.TextBesideIcon
                checked:                        false
                checkable:                      false
                autoExclusive:                  false
                flat:                           false
                autoRepeat:                     false
                highlighted:                    true
                onClicked:                      swipePage.setCurrentIndex(1)
                background:                     Rectangle { color: application.mainWindowButton_BackgroundColor }
            }

            Button {
                id:                             swipeHomeButtonExit
                width:                          application.mainWindowButton_Width
                height:                         application.mainWindowButton_Heigh
                text:                           application.mainWindowButtonExit_Tittle
                font.hintingPreference:         Font.PreferFullHinting
                font.pointSize:                 application.mainWindowButton_Font
                antialiasing:                   true
                wheelEnabled:                   true
                autoExclusive:                  true
                checked:                        true
                checkable:                      true
                highlighted:                    true
                flat:                           true
                autoRepeat:                     true
                onClicked:                      static.exit()
                background:                     Rectangle { color: application.mainWindowButton_BackgroundColor }
            }
        }

        Image {
            id:                                 welcomelogo
            x:                                  409
            y:                                  140
            width:                              473
            height:                             289
            anchors.verticalCenter:             parent.verticalCenter
            source:                             application.mainWindowImageLogo_Path
            fillMode:                           Image.PreserveAspectFit
        }
    }
}
