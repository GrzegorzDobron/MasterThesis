import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0

Item {
    id:                                 resistorWindow

    Rectangle {
        id:                             resistorWindowBackground
        anchors.fill:                   parent
        anchors.leftMargin:             application.itemMargin
        anchors.rightMargin:            application.itemMargin
        color:                          application.swapWindow_BackgroundColor

        Button {
            id:                         resistorWindowButtonPreview
            highlighted:                true
            anchors.left:               parent.left
            anchors.verticalCenter:     parent.verticalCenter
            anchors.leftMargin:         application.buttonPreview_Margin
            width:                      application.buttonPreview_Width
            height:                     application.buttonPreview_Heigh
            text:                       application.buttonPreview_Tittle
            onClicked:                  swipePage.setCurrentIndex(1)
        }

        Grid {
            id:                         resistorWindowInputGrid
            rows:                       2
            columns:                    2
            anchors.verticalCenter:     parent.verticalCenter
            anchors.left:               parent.left
            anchors.leftMargin:         application.resistorWindowInputGrid_Margin
            width:                      application.resistorWindowInputGrid_Width
            height:                     application.resistorWindowInputGrid_Heigh
            spacing:                    application.resistorWindowInputGrid_Spacing
            verticalItemAlignment:      Grid.AlignVCenter
            horizontalItemAlignment:    Grid.AlignLeft

            Text {
                id:                     resistorWindowInputGridLabel1
                color:                  application.resistorWindowInputLabel_Color
                text:                   application.resistorWindowInputLabel1_Text
                font.pixelSize:         application.resistorWindowInputLabel_Size
            }

            TextField {
                id:                     resistorWindowInputGridInput1
                hoverEnabled:           false
                placeholderTextColor:   application.resistorWindowInput_placeholderColor
                placeholderText:        application.resistorWindowInput1_placeholderText
                onTextChanged:          input.read1(resistorWindowInputGridInput1.text)
            }

            Text {
                id:                     resistorWindowInputGridLabel2
                color:                  application.resistorWindowInputLabel_Color
                text:                   application.resistorWindowInputLabel2_Text
                font.pixelSize:         application.resistorWindowInputLabel_Size
            }

            TextField {
                id:                     resistorWindowInputGridInput2
                hoverEnabled:           false
                placeholderTextColor:   application.resistorWindowInput_placeholderColor
                placeholderText:        application.resistorWindowInput2_placeholderText
                onTextChanged:          input.read2(resistorWindowInputGridInput2.text)
            }
        }

        Text {
            id:                         resistorWindowOutputlabel
            x:                          500
            y:                          240
            text:                       "suma"
            color:                      "white"
        }

        Text {
            id:                         resistorWindowOutput1
            x:                          544
            y:                          240
            text:                       output.text
            styleColor:                 "#d64747"
            color:                      "#35ca75"
        }

        ComboBox {
            x: 200
            y: 360
            width: 200
            model: [ "Banana", "Apple", "Coconut" ]
        }



    }
}
