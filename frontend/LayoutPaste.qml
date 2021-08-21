import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0

Item {
    id:         windowPaste

    Rectangle {
        id:                             pasteWindowBackground
        anchors.fill:                   parent
        anchors.leftMargin:             0
        anchors.rightMargin:            0
        color:                          application.swapWindow_BackgroundColor

        Rectangle {
            id:                         pasteWindowRectangleInput1
            x:                          50
            y:                          50
            width:                      250
            height:                     300
            color:                      application.swapWindow_BackgroundColor
            border.color:               application.elementWindowRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border

            Text {
                id:                         pasteWindowInput1GridMainLabel1
                horizontalAlignment:        Text.AlignHCenter
                anchors.topMargin:          14
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.pasteWindowInputLabel_Color
                text:                       application.pasteWindowInputMainLabel1_Text
                anchors.top:                parent.top
                font.pixelSize:             application.bigTextSize
            }

            Grid {
                id:                         pasteWindowInputGrid1
                anchors.top:                parent.top
                anchors.topMargin:          application.elementWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.elementWindowInputGrid_LeftMargin
                rows:                       4
                columns:                    2
                spacing:                    application.elementWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                     pasteWindowInputGrid1Label1
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInput1Label1_Text
                    font.pixelSize:         application.pasteWindowInputLabel_Size
                }

                TextField {
                    id:                     pasteWindowInputGrid1Input1
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width + 50
                    onTextChanged:          input_new_paste.input_new_paste_resistor_name(pasteWindowInputGrid1Input1.text)
                }

                Text {
                    id:                     pasteWindowInputGrid1Label2
                    horizontalAlignment:    Text.AlignLeft
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInput1Label2_Text
                    font.pixelSize:         0
                }

                TextField {
                    id:                     pasteWindowInputGrid1Input2
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_new_paste.input_new_paste_r(pasteWindowInputGrid1Input2.text)
                }
            }

            Button {
                id:                         pasteWindowButtonNewPaste1
                highlighted:                true
                width:                      application.pasteWindowButton_Width
                height:                     application.pasteWindowButton_Heigh
                text:                       application.pasteWindowButtonNewPaste_Tittle
                anchors.bottom:             parent.bottom
                anchors.horizontalCenter:   parent.horizontalCenter
                anchors.bottomMargin:       10
                font.pointSize:             application.pasteWindowButton_Font
                onClicked:                  static.add_new_paste_1()
            }
        }
        Rectangle {
            id:                         pasteWindowRectangleInput2
            x:                          350
            y:                          50
            width:                      270
            height:                     300
            color:                      application.swapWindow_BackgroundColor
            border.color:               application.elementWindowRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border

            Text {
                id:                         pasteWindowInputGrid2MainLabel2
                horizontalAlignment:        Text.AlignHCenter
                anchors.topMargin:          14
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.pasteWindowInputLabel_Color
                text:                       application.pasteWindowInputMainLabel2_Text
                anchors.top:                parent.top
                font.pixelSize:             application.bigTextSize
            }

            Grid {
                id:                         pasteWindowInputGrid2
                anchors.top:                parent.top
                anchors.topMargin:          application.elementWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.elementWindowInputGrid_LeftMargin
                rows:                       4
                columns:                    2
                spacing:                    application.elementWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                     pasteWindowInputGrid2Label12
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInput2Label1_Text
                    font.pixelSize:         application.pasteWindowInputLabel_Size
                }

                TextField {
                    id:                     pasteWindowInputGrid2Input1
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width + 50
                    onTextChanged:          input_new_paste.input_new_paste_capacitor_name(pasteWindowInputGrid2Input1.text)
                }

                Text {
                    id:                     pasteWindowInputGrid2Label2
                    horizontalAlignment:    Text.AlignLeft
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInput2Label2_Text
                    font.pixelSize:         application.pasteWindowInputLabel_Size
                }

                TextField {
                    id:                     pasteWindowInputGrid2Input2
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_new_paste.input_new_paste_przenikalnosc(pasteWindowInputGrid2Input2.text)
                }

                Text {
                    id:                     pasteWindowInputGrid2Label3
                    horizontalAlignment:    Text.AlignLeft
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInput2Label3_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     pasteWindowInputGrid2Input3
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_new_paste.input_new_paste_voltage(pasteWindowInputGrid2Input3.text)
                }
            }

            Button {
                id:                         pasteWindowButtonNewPaste2
                highlighted:                true
                width:                      application.pasteWindowButton_Width
                height:                     application.pasteWindowButton_Heigh
                text:                       application.pasteWindowButtonNewPaste_Tittle
                anchors.bottom:             parent.bottom
                anchors.horizontalCenter:   parent.horizontalCenter
                anchors.bottomMargin:       10
                font.pointSize:             application.pasteWindowButton_Font
                onClicked:                  static.add_new_paste_2()
            }
        }
    }
}
