import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0


ApplicationWindow {

    // kolory
    property var color_blue:                            "#1974c0"       // kolor wydzialowy
    property var color_black:                           "#000000"       //
    property var color_grey:                            "#343434"       //

    // zmienne ogólne
    property var leftMargin:                            100             // odsuniecie przed previewButtow
    property var smallTextSize:                         12              // mala czcionka
    property var bigTextSize:                           12              // duza czcionka

    // okno główne aplikacji
    property var mainWindow_Title:                      "Main"
    property var mainWindow_Width:                      1000
    property var mainWindow_Heigh:                      500
    property var mainWindow_BackgroundColor:            application.color_blue
    
    // okno faq
    property var faqWindowSlider_x:                     940
    property var faqWindowSlider_Width:                 40
    property var faqWindowSlider_Height:                430
    property var faqWindowFlickable_Width:              320
    property var faqWindowFlickable_Height:             400
    property var faqWindowLeftMargin:                   application.leftMargin
    property var faqWindowText_size:                    application.smallTextSize
    property var faqWindowText_color:                   application.color_black

    // pasek bar
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
    property var barButton_Font:                        application.bigTextSize
    property var barButton_x:                           14
    property var barButton_y:                           -22

    // SwipeView
    property var swapWindow_BackgroundColor:            application.color_black
    property var pageIndicator_Width:                   70
    property var pageIndicator_Heigh:                   20
    property var pageIndicator_Margin:                  15
    property var itemMargin:                            -15             // rozszerzenie tła SwipeView

    // previewButton
    property var buttonPreview_Tittle:                  "<-"
    property var buttonPreview_Width:                   40
    property var buttonPreview_Heigh:                   240
    property var buttonPreview_Font:                    24
    property var buttonPreview_Margin:                  30
    property var buttonPreview_BackgroundColor:         application.color_black

    // okno powitalne
    property var mainWindowButtonProject_Tittle:        "Projektowanie"
    property var mainWindowButtonExit_Tittle:           "Exit"
    property var mainWindowButton_LeftMargin:           80
    property var mainWindowButton_Spacing:              10
    property var mainWindowButton_Width:                200
    property var mainWindowButton_Heigh:                50
    property var mainWindowButton_Font:                 application.bigTextSize
    property var mainWindowButton_BackgroundColor:      application.color_grey
    property var mainWindowColumn_Width:                170
    property var mainWindowColumn_Heigh:                100
    property var mainWindowLogo_Width:                  500
    property var mainWindowLogo_RightMargin:            20

    // okno wyboru
    property var chooseWindowButtonResistor_Tittle:     "Rezystor"
    property var chooseWindowButtonCapacitor_Tittle:    "Kondensator"
    property var chooseWindowButton_Width:              200
    property var chooseWindowButton_Heigh:              50
    property var chooseWindowButton_Font:               application.bigTextSize
    property var chooseWindowButton_BackgroundColor:    application.color_grey
    property var chooseWindowButton_Margin:             50                          // odsunieie button od dolu
    property var chooseWindowColumn_Heigh:              300                         // odleglosc zdjecia od button
    property var chooseWindowColumn_Width:              600                         // szerokosc miedzy kolumnami
    property var chooseWindowImage_Width:               300                         // szerokosc zdjecia

    // okno wprowadzania
    property var resistorWindowInput_placeholderColor:  application.color_grey
    property var resistorWindowInputLabel_Size:         application.smallTextSize
    property var resistorWindowInputLabel_Color:        application.color_grey
    property var resistorWindowInputGrid_Spacing:       10
    property var resistorWindowInputGrid_Margin:        application.leftMargin
    property var resistorWindowInputGrid_Width:         200
    property var resistorWindowInputGrid_Heigh:         200

    // okno rezystora
    property var resistorWindowInputLabel1_Text:        "1. wartość:"
    property var resistorWindowInputLabel2_Text:        "2. wartość:"
    property var resistorWindowInput1_placeholderText:  "0"
    property var resistorWindowInput2_placeholderText:  "0"


    // obrazy
    property var mainWindowImageLogo_Path:              "files/welcome-logo.png"
    property var chooseWindowImageResistor_Path:        "files/resistor.png"
    property var chooseWindowImageCapacitor_Path:       "files/capacitor.png"

    id:             application
    visible:        true
    flags:          Qt.Window | Qt.FramelessWindowHint
    color:          application.mainWindow_BackgroundColor
    width:          application.mainWindow_Width
    height:         application.mainWindow_Heigh
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
        id:                                 bar
        x: 10
        y: 20
        width:                              608
        height:                             26
        anchors.left:                       parent.left
        anchors.top:                        parent.top
        anchors.topMargin:                  24
        anchors.leftMargin:                 10
        focusPolicy:                        Qt.StrongFocus
        currentIndex:                       0
        background:                         Rectangle { color: application.color_blue }

        TabButton {
            id:                             barButton1
            x:                              0
            y:                              application.barButton_y
            width:                          application.barButton_Width
            height:                         application.barButton_Heigh
            background:                     Rectangle { color: application.barButton1_Background }
            onClicked: {
                layoutPage.currentIndex(0)
                swipePage.setCurrentIndex(0)
            }

            Text {
                id:                         barButton1Tittle
                text:                       application.barButton1_Tittle
                anchors.verticalCenter:     parent.verticalCenter
                color:                      application.barButton1_Color
                font.pixelSize:             0
                anchors.horizontalCenter:   parent.horizontalCenter
            }
        }

        TabButton {
            id:                             barButton2
            x:                              182
            y:                              application.barButton_y
            width:                          application.barButton_Width
            height:                         application.barButton_Heigh
            background:                     Rectangle { color: application.barButton2_Background }
            onClicked:                      layoutPage.currentIndex(1)

            Text {
                id:                         barButton2Tittle
                text:                       application.barButton2_Tittle
                anchors.verticalCenter:     parent.verticalCenter
                color:                      application.barButton2_Color
                font.pixelSize:             application.barButton_Font
                anchors.horizontalCenter:   parent.horizontalCenter
            }
        }

        TabButton {
            id:                             barButton3
            x:                              452
            y:                              application.barButton_y
            width:                          application.barButton_Width
            height:                         application.barButton_Heigh
            background:                     Rectangle { color: application.barButton3_Background }
            onClicked:                      layoutPage.currentIndex(2)

            Text {
                id:                         barButton3Tittle
                text:                       application.barButton3_Tittle
                anchors.verticalCenter:     parent.verticalCenter
                color:                      application.barButton3_Color
                font.pixelSize:             0
                anchors.horizontalCenter:   parent.horizontalCenter
            }
        }
    }
}
