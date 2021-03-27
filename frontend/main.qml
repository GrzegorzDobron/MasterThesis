import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs.qml 1.0


    ApplicationWindow {

        property var color_blue:                            "#1974c0"
        property var color_black:                           "#000000"
        property var color_grey:                            "#343434"

        property var mainWindow_Title:                      "Main"
        property var mainWindow_Width:                      1000
        property var mainWindow_Heigh:                      500
        property var mainWindow_BackgroundColor:            application.color_blue

        property var barButton1_Tittle:                     "Home"
        property var barButton2_Tittle:                     "FAQ"
        property var barButton3_Tittle:                     "Options"
        property var barButton1_Color:                      bar.currentIndex == 0 ? "white" : "black"
        property var barButton2_Color:                      bar.currentIndex == 1 ? "white" : "black"
        property var barButton3_Color:                      bar.currentIndex == 2 ? "white" : "black"
        property var barButton1_Background:                 bar.currentIndex == 0 ? application.color_black : application.color_grey
        property var barButton2_Background:                 bar.currentIndex == 1 ? application.color_blue : application.color_grey
        property var barButton3_Background:                 bar.currentIndex == 2 ? application.color_blue : application.color_grey
        property var barButton_Width:                       200
        property var barButton_Heigh:                       40
        property var barButton_Font:                        14
        property var barButton_x:                           14
        property var barButton_y:                           -22

        property var mainWindowButtonProject_Tittle:        "Projektowanie"
        property var mainWindowButtonExit_Tittle:           "Exit"
        property var mainWindowButton_Width:                200
        property var mainWindowButton_Heigh:                50
        property var mainWindowButton_Font:                 14
        property var mainWindowButton_BackgroundColor:      application.color_grey

        property var swapWindow_BackgroundColor:            application.color_black

        property var chooseWindowButtonResistor_Tittle:     "Rezystor"
        property var chooseWindowButtonCapacitor_Tittle:    "Kondensator"
        property var chooseWindowButton_Width:              200
        property var chooseWindowButton_Heigh:              50
        property var chooseWindoweButton_Font:              14
        property var chooseWindowButton_BackgroundColor:    application.color_grey

        property var buttonPreview_Tittle:                  "<-"
        property var buttonPreview_Width:                   40
        property var buttonPreview_Heigh:                   240
        property var buttonPreview_Font:                    24
        property var buttonPreview_x:                       30
        property var buttonPreview_y:                       100
        property var buttonPreview_BackgroundColor:         application.color_black

        property var mainWindowImageLogo_Path:              "files/welcome-logo.png"
        property var chooseWindowImageResistor_Path:        "files/rezystor.png"
        property var chooseWindowImageCapacitor_Path:       "files/welcome-logo.png"

        property var chooseWindowImage_Width:               300

        property var chooseWindowColumn_Width:              200

        property var pageIndicator_x:                       460
        property var pageIndicator_y:                       405
        property var pageIndicator_Width:                   70
        property var pageIndicator_Heigh:                   20

        property string value: output.test_out()

        id:             application
        visible:        true
        flags:          Qt.Window | Qt.FramelessWindowHint

        color:          application.mainWindow_BackgroundColor
        width:          application.mainWindow_Width
        height:         application.mainWindow_Heigh
        minimumHeight:  application.mainWindow_Heigh
        minimumWidth:   application.mainWindow_Width
        maximumHeight:  application.mainWindow_Heigh
        maximumWidth:   application.mainWindow_Width
        title:          application.mainWindow_Title

        StackLayout {
            id:                     layoutPage
            opacity:                1
            visible:                true
            anchors.left:           parent.left
            anchors.right:          parent.right
            anchors.top:            bar.bottom
            anchors.bottom:         parent.bottom
            anchors.topMargin:      0
            anchors.bottomMargin:   11
            anchors.leftMargin:     10
            anchors.rightMargin:    10
            currentIndex:           bar.currentIndex

            LayoutHome {
                id:                 layoutHome
                x:                  0
                y:                  -6
            }

            LayoutFaq {
                id:                 layoutWindow
                height:             460

            }

            LayoutOptions {
                id:         layoutOptions
                height:     460
            }
        }

        TabBar {
            id:                     bar
            x: 10
            y: 20
            width:                  608
            height:                 26
            anchors.left:           parent.left
            anchors.top:            parent.top
            anchors.topMargin:      24
            anchors.leftMargin:     10
            focusPolicy:            Qt.StrongFocus
            currentIndex:           0
            background:             Rectangle { color: application.color_blue }

            TabButton {
                id:                 barButton1
                x:                  0
                y:                  application.barButton_y
                width:              application.barButton_Width
                height:             application.barButton_Heigh

                Text {
                    id:                         barButton1Tittle
                    text:                       application.barButton1_Tittle
                    anchors.verticalCenter:     parent.verticalCenter
                    color:                      application.barButton1_Color
                    font.pixelSize:             0
                    anchors.horizontalCenter:   parent.horizontalCenter
                }
                background:                     Rectangle { color: application.barButton1_Background }
                onClicked: {
                    layoutPage.currentIndex(0)
                    swipePage.setCurrentIndex(0)
                }
            }

            TabButton {
                id:                 barButton2
                x:                  182
                y:                  application.barButton_y
                width:              application.barButton_Width
                height:             application.barButton_Heigh

                Text {
                    id:                         barButton2Tittle
                    text:                       application.barButton2_Tittle
                    anchors.verticalCenter:     parent.verticalCenter
                    color:                      application.barButton2_Color
                    font.pixelSize:             application.barButton_Font
                    anchors.horizontalCenter:   parent.horizontalCenter
                }
                background:                     Rectangle { color: application.barButton2_Background }
                onClicked:                      layoutPage.currentIndex(1)
            }

            TabButton {
                id:                 barButton3
                x:                  452
                y:                  application.barButton_y
                width:              application.barButton_Width
                height:             application.barButton_Heigh

                Text {
                    id:                         barButton3Tittle
                    text:                       application.barButton3_Tittle
                    anchors.verticalCenter:     parent.verticalCenter
                    color:                      application.barButton3_Color
                    font.pixelSize:             0
                    anchors.horizontalCenter:   parent.horizontalCenter
                }
                background:                     Rectangle { color: application.barButton3_Background }
                onClicked:                      layoutPage.currentIndex(2)
            }
        }
    }
