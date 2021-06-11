import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0


ApplicationWindow {

    // kolory
    property var color_blue:                                "#1974c0"       // kolor wydzialowy
    property var color_black:                               "black"         //
    property var color_grey:                                "#343434"       //
    property var color_white:                               "white"
    property var color_dark:                                application.color_black
    property var color_light:                               application.color_white
    property var color_thema:                               application.color_dark
    property var color_thema_text:                          application.color_white

    // zmienne ogólne
    property var leftMargin:                                100             // odsuniecie przed previewButtow
    property var smallTextSize:                             12              // mala czcionka
    property var bigTextSize:                               12              // duza czcionka

    // okno główne aplikacji
    property var mainWindow_Title:                          "Kreator elementów biernych"
    property var mainWindow_Width:                          1000
    property var mainWindow_Heigh:                          500
    property var mainWindow_BackgroundColor:                application.color_blue

    // okno faq
    property var faqWindowSlider_x:                         940
    property var faqWindowSlider_Width:                     40
    property var faqWindowSlider_Height:                    430
    property var faqWindowFlickable_Width:                  320
    property var faqWindowFlickable_Height:                 400
    property var faqWindowLeftMargin:                       application.leftMargin
    property var faqWindowText_size:                        application.smallTextSize
    property var faqWindowText_color:                       application.color_black

    // pasek bar
    property var barButton1_Tittle:                         "Home"
    property var barButton2_Tittle:                         "FAQ"
    property var barButton3_Tittle:                         "Options"
    property var barButton4_Tittle:                         "Pasty"
    property var barButton1_Color:                          bar.currentIndex == 0 ? application.color_thema_text : application.color_white
    property var barButton2_Color:                          bar.currentIndex == 1 ? application.color_thema_text : application.color_white
    property var barButton3_Color:                          bar.currentIndex == 2 ? application.color_thema_text : application.color_white
    property var barButton4_Color:                          bar.currentIndex == 3 ? application.color_thema_text : application.color_white
    property var barButton1_Background:                     bar.currentIndex == 0 ? application.color_thema : application.color_grey
    property var barButton2_Background:                     bar.currentIndex == 1 ? application.color_thema : application.color_grey
    property var barButton3_Background:                     bar.currentIndex == 2 ? application.color_thema : application.color_grey
    property var barButton4_Background:                     bar.currentIndex == 3 ? application.color_thema : application.color_grey
    property var barButton_Width:                           200
    property var barButton_Heigh:                           40
    property var barButton_Font:                            application.bigTextSize
    property var barButton_x:                               14
    property var barButton_y:                               -22

    // SwipeView
    property var swapWindow_BackgroundColor:                application.color_thema
    property var pageIndicator_Width:                       70
    property var pageIndicator_Heigh:                       20
    property var pageIndicator_Margin:                      15
    property var itemMargin:                                -15             // rozszerzenie tła SwipeView

    // previewButton
    property var buttonPreview_Tittle:                      "<-"
    property var buttonPreview_Width:                       40
    property var buttonPreview_Heigh:                       240
    property var buttonPreview_Font:                        24
    property var buttonPreview_Margin:                      30
    property var buttonPreview_BackgroundColor:             application.color_black

    // okno powitalne
    property var mainWindowButtonProject_Tittle:            "Projektowanie"
    property var mainWindowButtonExit_Tittle:               "Exit"
    property var mainWindowButton_LeftMargin:               80
    property var mainWindowButton_Spacing:                  10
    property var mainWindowButton_Width:                    200
    property var mainWindowButton_Heigh:                    50
    property var mainWindowButton_Font:                     application.bigTextSize
    property var mainWindowButton_BackgroundColor:          application.color_grey
    property var mainWindowColumn_Width:                    170
    property var mainWindowColumn_Heigh:                    100
    property var mainWindowLogo_Width:                      500
    property var mainWindowLogo_RightMargin:                20

    // okno wyboru
    property var chooseWindowButtonResistor_Tittle:         "Rezystor"
    property var chooseWindowButtonCapacitor_Tittle:        "Kondensator"
    property var chooseWindowButton_Width:                  200
    property var chooseWindowButton_Heigh:                  50
    property var chooseWindowButton_Font:                   application.bigTextSize
    property var chooseWindowButton_BackgroundColor:        application.color_grey
    property var chooseWindowButton_Margin:                 50                          // odsunieie button od dolu
    property var chooseWindowColumn_Heigh:                  300                         // odleglosc zdjecia od button
    property var chooseWindowColumn_Width:                  600                         // szerokosc miedzy kolumnami
    property var chooseWindowImage_Width:                   300                         // szerokosc zdjecia

    // okno wprowadzania
    property var elementWindowInput_placeholderColor:      application.color_grey
    property var elementWindowInputLabel_Size:             application.smallTextSize
    property var elementWindowInputLabel_Color:            application.color_thema_text
    property var elementWindowInputMainLabel_Size:         application.bigTextSize
    property var elementWindowInputmainLabel_Color:        application.color_thema_text
    property var elementWindowOutputLabel_Color:           application.color_blue

    property var elementWindowInputGrid_Spacing:           10
    property var elementWindowInputGrid_TopMargin:         50          // odsuniecie tekstu od ramki z gory
    property var elementWindowInputGrid_LeftMargin:        10          // odsuniecie tekstu od ramki z lewej

    property var elementWindowInputRectangle_Heigh:        200         // gabaryt ramki
    property var elementWindowInputRectangle1_Width:       235         // gabaryt ramki
    property var elementWindowInputRectangle2_Width:       260         // gabaryt ramki
    property var elementWindowInputRectangleList_Heigh:    150         // gabaryt ramki - lista
    // property var resistorWindowInputRectangleList_Width:    450         // gabaryt ramki - lista
    property var elementWindowInputRectangleList_Width:    application.elementWindowInputRectangle1_Width + application.elementWindowInputRectangle2_Width + application.elementWindowInputRectangle_Spacing
    property var elementWindowInputRectangle_Top:          50          // odsuniecie ramki z gory
    property var elementWindowInputRectangle_Spacing:      10          // odsuniecie ramek

    property var elementWindowOutputRectangle_Heigh:       220         // gabaryt ramki
    property var elementWindowOutputRectangle_Width:       250         // gabaryt ramki

    property var elementWindowInput_Width:                 80          // szerokosc pola do wprowadzania
    property var elementWindowInputList_Width:             300         // szerokość listy wyboru

    property var windowInputRectangleBorder_Width:          5          // grubosc ramki
    property var elementWindowRectangleBorder_Color:        application.color_grey
    property var windowOutputRectangleBorder_Color:         application.color_blue

    // okna elementów
    property var elementWindowButton_Width:                100
    property var elementWindowButton_Heigh:                30
    property var elementWindowButtonGraph_Tittle:          "wykresy"
    property var elementWindowButtonGraph_Font:            application.smallTextSize


    // okno rezystora
    property var resistorWindowInputMainLabel1_Text:        "DANE WEJŚCIOWE:"
    property var resistorWindowInputMainLabel2_Text:        "PARAMETRY OBLICZEŃ:"
    property var resistorWindowInputMainLabel3_Text:        "DANE USTANDARYZOWANE:"
    property var resistorWindowOutputMainLabel1_Text:       "DANE WYJŚCIOWE:"

    property var resistorWindowInputLabel1_Text:            "rezystancja [R]:"
    property var resistorWindowInputLabel2_Text:            "prąd pracy max [mA]:"
    property var resistorWindowInputLabel3_Text:            "korekcja:"
    property var resistorWindowInputLabel4_Text:            "obciążalność [W/cm2]:"
    property var resistorWindowInputLabel5_Text:            "pasta:"
    property var resistorWindowInputLabel6_Text:            "metoda wytworzenia \n(minimalna szerokość):"
    property var resistorWindowInputLabel7_Text:            "współ. bezp. obciazalnosci:"
    property var resistorWindowInputLabel8_Text:            "moc max [mW]:"

    property var resistorWindowOutputLabel1_Text:            "rezystancja z korekcją [Ω]:"
    property var resistorWindowOutputLabel2_Text:            "liczba kwadratów:"
    property var resistorWindowOutputLabel3_Text:            "moc projektowa [mW]:"
    property var resistorWindowOutputLabel4_Text:            "powierzchnia minimalna [mm2]:"
    property var resistorWindowOutputLabel5_Text:            "szerokość [mm]:"
    property var resistorWindowOutputLabel6_Text:            "dlugość [mm]:"
    property var resistorWindowOutputLabel7_Text:            "rezystancja na kwadrat [Ω]:"

    property var resistorWindowInput1_placeholderText:      output_resistor_default_r.text
    property var resistorWindowInput2_placeholderText:      output_resistor_default_i.text
    property var resistorWindowInput3_placeholderText:      output_resistor_default_korekta.text
    property var resistorWindowInput4_placeholderText:      output_resistor_default_j.text
    property var resistorWindowInput7_placeholderText:      output_resistor_default_k_p.text
    property var resistorWindowInput8_placeholderText:      output_resistor_default_p.text

    // kondensator
    property var capacitorWindowInputMainLabel1_Text:       "DANE WYJŚCIOWE:"
    property var capacitorWindowInputMainLabel2_Text:       "input label 8"
    property var capacitorWindowInputMainLabel3_Text:       "input label 8"
    property var capacitorWindowOutputMainLabel1_Text:      "input label 8"

    property var capacitorWindowInputLabel1_Text:           "input label 1"
    property var capacitorWindowInputLabel2_Text:           "input label 2"
    property var capacitorWindowInputLabel3_Text:           "input label 8"
    property var capacitorWindowInputLabel4_Text:           "input label 8"
    property var capacitorWindowInputLabel5_Text:           "input label 8"
    property var capacitorWindowInputLabel6_Text:           "input label 8"
    property var capacitorWindowInputLabel7_Text:           "input label 8"
    property var capacitorWindowInputLabel8_Text:           "input label 8"

    property var capacitorWindowInput1_placeholderText:     output_capacitor_default_c.text
    property var capacitorWindowInput2_placeholderText:     "input label 2"
    property var capacitorWindowInput3_placeholderText:     "input label 8"
    property var capacitorWindowInput4_placeholderText:     "input label 8"
    property var capacitorWindowInput7_placeholderText:     "input label 8"
    property var capacitorWindowInput8_placeholderText:     "input label 8"

    property var capacitorWindowOutputLabel1_Text:          "input label 8"
    property var capacitorWindowOutputLabel2_Text:          "input label 8"
    property var capacitorWindowOutputLabel3_Text:          "input label 8"
    property var capacitorWindowOutputLabel4_Text:          "input label 8"


    // pasta
    property var pasteWindowInputLabel_Color:               application.color_thema_text
    property var pasteWindowInputLabel_Size:                application.smallTextSize

    property var pasteWindowButton_Width:                   100
    property var pasteWindowButton_Heigh:                   50
    property var pasteWindowButtonNewPaste_Tittle:          "Dodaj"
    property var pasteWindowButton_Font:                    application.smallTextSize
    property var pasteWindowInputList_Width

    property var pasteWindowInputMainLabel1_Text:           "NOWA PASTA:"
    property var pasteWindowInputLabel1_Text:               "nazwa:"
    property var pasteWindowInputLabel2_Text:               "przenikalność \nelektryczna:"
    property var pasteWindowInputLabel3_Text:               "rezystancja na \nkwadrat:"
    property var pasteWindowInputLabel4_Text:               "type:"

    // obrazy
    property var mainWindowImageLogo_Path:                  "files/welcome-logo.png"
    property var chooseWindowImageResistor_Path:            "files/resistor.png"
    property var chooseWindowImageCapacitor_Path:           "files/capacitor.png"

    id:                         application
    visible:                    true
    //flags:                      Qt.Window
    //flags: Qt.FramelessWindowHint
    color:                      application.mainWindow_BackgroundColor
    width:                      application.mainWindow_Width
    height:                     application.mainWindow_Heigh
    title:                      application.mainWindow_Title

    maximumHeight:              application.mainWindow_Heigh
    maximumWidth:               application.mainWindow_Width
    minimumHeight:              application.mainWindow_Heigh
    minimumWidth:               application.mainWindow_Width


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
            id:                 layoutOptions
            height:             460
        }

        LayoutPaste {
            id:                  layoutPaste
            height:              460
        }
    }

    TabBar {
        id:                                 bar
        x: 10
        y: 20
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

        TabButton {
            id:                             barButton4
            x:                              0
            y:                              application.barButton_y
            width:                          application.barButton_Width
            height:                         application.barButton_Heigh
            background:                     Rectangle { color: application.barButton4_Background }
            onClicked:                      layoutPage.currentIndex(3)

            Text {
                id:                         barButton4Tittle
                text:                       application.barButton4_Tittle
                anchors.verticalCenter:     parent.verticalCenter
                color:                      application.barButton4_Color
                font.pixelSize:             0
                anchors.horizontalCenter:   parent.horizontalCenter
            }
        }
    }
}
