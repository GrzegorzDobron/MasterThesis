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
            x:                          95
            y:                          90
            width:                      177
            height:                     269
            color:                      application.color_black
            border.color:               application.elementWindowRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border

            Grid {
                id:                         pasteWindowInputGrid
                anchors.top:                parent.top
                anchors.topMargin:          application.elementWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.elementWindowInputGrid_LeftMargin
                rows:                       3
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
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.input_new_paste_name(pasteWindowInputGridInput1.text)
                }

                Text {
                    id:                     pasteWindowInputGridLabel2
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInputLabel2_Text
                    font.pixelSize:         application.pasteWindowInputLabel_Size
                }

                TextField {
                    id:                     pasteWindowInputGridInput2
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.input_new_paste_twr(pasteWindowInputGridInput2.text)
                }

                Text {
                    id:                     pasteWindowInputGridLabel3
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.pasteWindowInputLabel_Color
                    text:                   application.pasteWindowInputLabel3_Text
                    font.pixelSize:         application.pasteWindowInputLabel_Size
                }

                TextField {
                    id:                     pasteWindowInputGridInput3
                    hoverEnabled:           false
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.input_new_paste_r(pasteWindowInputGridInput3.text)
                }
            }

            Button {
                id:                         pasteWindowButtonNewPaste
                highlighted:                true
                width:                      application.pasteWindowButton_Width
                height:                     application.pasteWindowButton_Heigh
                text:                       application.pasteWindowButtonNewPaste_Tittle
                font.pointSize:             application.pasteWindowButton_Font
                onClicked:                  static.add_new_paste()
            }
        }
    }
}
