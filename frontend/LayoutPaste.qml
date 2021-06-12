import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0

Item {
    id:         windowOptions

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
            height:                     350
            color:                      application.swapWindow_BackgroundColor
            border.color:               application.elementWindowRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border

            Text {
                id:                         pasteWindowInputGridMainLabel1
                horizontalAlignment:        Text.AlignHCenter
                anchors.topMargin:          14
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.pasteWindowInputLabel_Color
                text:                       application.pasteWindowInputMainLabel1_Text
                anchors.top:                parent.top
                font.pixelSize:             application.bigTextSize
            }

            Grid {
                id:                         pasteWindowInputGrid
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
                    id:                     pasteWindowInputGridLabel1
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInputLabel1_Text
                    font.pixelSize:         application.pasteWindowInputLabel_Size
                }

                TextField {
                    id:                     pasteWindowInputGridInput1
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width + 50
                    onTextChanged:          input_new_paste.input_new_paste_name(pasteWindowInputGridInput1.text)
                }

                Text {
                    id:                     pasteWindowInputGridLabel2
                    horizontalAlignment:    Text.AlignLeft
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInputLabel2_Text
                    font.pixelSize:         application.pasteWindowInputLabel_Size
                }

                TextField {
                    id:                     pasteWindowInputGridInput2
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_new_paste.input_new_paste_przenikalnosc(pasteWindowInputGridInput2.text)
                }

                Text {
                    id:                     pasteWindowInputGridLabel3
                    horizontalAlignment:    Text.AlignLeft
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInputLabel3_Text
                    font.pixelSize:         0
                }

                TextField {
                    id:                     pasteWindowInputGridInput3
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_new_paste.input_new_paste_r(pasteWindowInputGridInput3.text)
                }

                Text {
                    id:                     pasteWindowInputGridLabel4
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInputLabel4_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

               ComboBox {
                   id:                     pasteWindowInputGridInput4
                   model:                  output_new_past_types.list
                   width:                  application.pasteWindowInputList_Width
                   onCurrentTextChanged:   input_new_paste.input_new_paste_type(pasteWindowInputGridInput4.currentText)
               }
            }

            Button {
                id:                         pasteWindowButtonNewPaste
                highlighted:                true
                width:                      application.pasteWindowButton_Width
                height:                     application.pasteWindowButton_Heigh
                text:                       application.pasteWindowButtonNewPaste_Tittle
                anchors.bottom:             parent.bottom
                anchors.horizontalCenter:   parent.horizontalCenter
                anchors.bottomMargin:       10
                font.pointSize:             application.pasteWindowButton_Font
                onClicked:                  static.add_new_paste()
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
