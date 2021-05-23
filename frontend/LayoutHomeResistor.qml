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

        Rectangle {
            id:                         resistorWindowRectangleInput1
            anchors.left:               parent.left
            anchors.top:                parent.top
            anchors.leftMargin:         application.leftMargin
            anchors.topMargin:          application.elementWindowInputRectangle_Top
            color:                      application.color_black
            border.color:               application.elementWindowRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border
            width:                      application.elementWindowInputRectangle1_Width
            height:                     application.elementWindowInputRectangle_Heigh


            Text {
                id:                         resistorWindowInputMainLabel1
                text:                       application.resistorWindowInputMainLabel1_Text
                horizontalAlignment:        Text.AlignHCenter
                anchors.top:                parent.top
                color:                      application.elementWindowInputmainLabel_Color
                font.pixelSize:             application.elementWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
            }

            Grid {
                id:                         resistorWindowInputGrid
                anchors.top:                parent.top
                anchors.topMargin:          application.elementWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.elementWindowInputGrid_LeftMargin
                rows:                       6
                columns:                    2
                spacing:                    application.elementWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                     resistorWindowInputGridLabel1
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel1_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput1
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput1_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_resistor.input_final_resistance(resistorWindowInputGridInput1.text)
                }

                Text {
                    id:                     resistorWindowInputGridLabel2
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel2_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput2
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput2_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_resistor.input_current_max(resistorWindowInputGridInput2.text)
                }

                Text {
                    id:                     resistorWindowInputGridLabel8
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel8_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput8
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput8_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_resistor.input_power_max(resistorWindowInputGridInput8.text)
                }
            }
        }

        Rectangle {
            id:                             resistorWindowRectangleInput2
            width:                          application.elementWindowInputRectangle2_Width
            height:                         application.elementWindowInputRectangle_Heigh
            anchors.left:                   resistorWindowRectangleInput1.right
            anchors.top:                    parent.top
            anchors.topMargin:              application.elementWindowInputRectangle_Top
            anchors.leftMargin:             application.elementWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.elementWindowRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border


            Text {
                id:                         resistorWindowInputMainLabel2
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.resistorWindowInputMainLabel2_Text
                anchors.top:                parent.top
                font.pixelSize:             application.elementWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.elementWindowInputmainLabel_Color
            }

            Grid {
                id:                         resistorWindowInputGrid2
                anchors.top:                parent.top
                anchors.topMargin:          application.elementWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.elementWindowInputGrid_LeftMargin
                rows:                       6
                columns:                    2
                spacing:                    application.elementWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                     resistorWindowInputGridLabel4
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel4_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput4
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput4_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_resistor.current_carrying_capacity(resistorWindowInputGridInput4.text)
                }

                Text {
                    id:                     resistorWindowInputGridLabel7
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel7_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput7
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput7_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_resistor.safety_factor_power(resistorWindowInputGridInput7.text)
                }

                Text {
                    id:                     resistorWindowInputGridLabel3
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel3_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput3
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput3_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_resistor.safety_factor_power(resistorWindowInputGridInput3.text)
                }
            }
        }

        Rectangle {
            id:                             resistorWindowRectangleInput3
            width:                          application.elementWindowInputRectangleList_Width
            height:                         application.elementWindowInputRectangleList_Heigh
            anchors.top:                    resistorWindowRectangleInput1.bottom
            anchors.left:                   parent.left
            anchors.leftMargin:             application.leftMargin
            anchors.topMargin:              application.elementWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.elementWindowRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border

            Text {
                id:                         resistorWindowInputMainLabel3
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.resistorWindowInputMainLabel3_Text
                anchors.top:                parent.top
                font.pixelSize:             application.elementWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.elementWindowInputmainLabel_Color
            }

            Grid {
                id:                         resistorWindowInputGrid3
                anchors.top:                parent.top
                anchors.topMargin:          application.elementWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.elementWindowInputGrid_LeftMargin
                rows:                       6
                columns:                    2
                spacing:                    application.elementWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                     resistorWindowInputGridLabel5
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel5_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                ComboBox {
                    id:                     resistorWindowInputPaste
                    model:                  output_past_list.list
                    width:                  application.elementWindowInputList_Width
                    onCurrentTextChanged:   input_resistor.input_paste(resistorWindowInputPaste.currentText)
                }

                Text {
                    id:                     resistorWindowInputGridLabel6
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel6_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                ComboBox {
                    id:                     resistorWindowInputCorectionMethod
                    model:                  output_corection_method_list.list
                    width:                  application.elementWindowInputList_Width
                    onCurrentTextChanged:   input_resistor.input_resistance_correction_methods(resistorWindowInputCorectionMethod.currentText)
                }
            }
        }

        Rectangle {
            id:                             resistorWindowRectangleOutput1
            width:                          application.elementWindowOutputRectangle_Width
            height:                         application.elementWindowOutputRectangle_Heigh
            anchors.left:                   resistorWindowRectangleInput2.right
            anchors.top:                    parent.top
            anchors.topMargin:              application.elementWindowInputRectangle_Top
            anchors.leftMargin:             application.elementWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.windowOutputRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border


            Text {
                id:                         resistorWindowOutputMainLabel1
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.resistorWindowOutputMainLabel1_Text
                anchors.top:                parent.top
                font.pixelSize:             0
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.elementWindowInputmainLabel_Color
            }

            Grid {
                id:                         resistorWindowOutputGrid1
                anchors.top:                parent.top
                anchors.topMargin:          application.elementWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.elementWindowInputGrid_LeftMargin
                rows:                       6
                columns:                    2
                spacing:                    application.elementWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                             resistorWindowOutputLabel1
                    text:                           application.resistorWindowOutputLabel1_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             resistorWindowOutput1
                    text:                           output_resistor_1.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             resistorWindowOutputLabel2
                    text:                           application.resistorWindowOutputLabel2_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             resistorWindowOutput2
                    text:                           output_resistor_2.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             resistorWindowOutputLabel3
                    text:                           application.resistorWindowOutputLabel3_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             resistorWindowOutput3
                    text:                           output_resistor_3.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             resistorWindowOutputLabel4
                    text:                           application.resistorWindowOutputLabel4_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             resistorWindowOutput4
                    text:                           output_resistor_4.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                }
            }

            Button {
                id:                         resistorWindowButtonGraph
                highlighted:                true
                width:                      application.elementWindowButton_Width
                height:                     application.elementWindowButton_Heigh
                text:                       application.elementWindowButtonGraph_Tittle
                anchors.bottom:             parent.bottom
                anchors.bottomMargin:       5
                anchors.horizontalCenter:   parent.horizontalCenter
                font.pointSize:             application.elementWindowButtonGraph_Font
                onClicked:                  static.resistor_wykres()
            }
        }
    }
}
