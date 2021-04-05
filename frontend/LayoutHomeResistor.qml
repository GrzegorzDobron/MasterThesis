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
            anchors.topMargin:          application.resistorWindowInputRectangle_Top
            color:                      application.color_black
            border.color:               application.resistorWindowInputRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border
            width:                      application.resistorWindowInputRectangle1_Width
            height:                     application.resistorWindowInputRectangle_Heigh


            Text {
                id:                         resistorWindowInputMainLabel1
                text:                       application.resistorWindowInputMainLabel1_Text
                horizontalAlignment:        Text.AlignHCenter
                anchors.top:                parent.top
                color:                      application.resistorWindowInputmainLabel_Color
                font.pixelSize:             application.resistorWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
            }

            Grid {
                id:                         resistorWindowInputGrid
                anchors.top:                parent.top
                anchors.topMargin:          application.resistorWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.resistorWindowInputGrid_LeftMargin
                rows:                       6
                columns:                    2
                spacing:                    application.resistorWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                     resistorWindowInputGridLabel1
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.resistorWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel1_Text
                    font.pixelSize:         application.resistorWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput1
                    hoverEnabled:           false
                    placeholderTextColor:   application.resistorWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput1_placeholderText
                    width:                  application.resistorWindowInput_Width
                    onTextChanged:          input.input_final_resistance(resistorWindowInputGridInput1.text)
                }

                Text {
                    id:                     resistorWindowInputGridLabel2
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.resistorWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel2_Text
                    font.pixelSize:         application.resistorWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput2
                    hoverEnabled:           false
                    placeholderTextColor:   application.resistorWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput2_placeholderText
                    width:                  application.resistorWindowInput_Width
                    onTextChanged:          input.input_current_max(resistorWindowInputGridInput2.text)
                }

                Text {
                    id:                     resistorWindowInputGridLabel8
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.resistorWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel8_Text
                    font.pixelSize:         application.resistorWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput8
                    hoverEnabled:           false
                    placeholderTextColor:   application.resistorWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput8_placeholderText
                    width:                  application.resistorWindowInput_Width
                    onTextChanged:          input.input_power_max(resistorWindowInputGridInput8.text)
                }
            }
        }

        Rectangle {
            id:                             resistorWindowRectangleInput2
            width:                          application.resistorWindowInputRectangle2_Width
            height:                         application.resistorWindowInputRectangle_Heigh
            anchors.left:                   resistorWindowRectangleInput1.right
            anchors.top:                    parent.top
            anchors.topMargin:              application.resistorWindowInputRectangle_Top
            anchors.leftMargin:             application.resistorWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.resistorWindowInputRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border


            Text {
                id:                         resistorWindowInputMainLabel2
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.resistorWindowInputMainLabel2_Text
                anchors.top:                parent.top
                font.pixelSize:             application.resistorWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.resistorWindowInputmainLabel_Color
            }

            Grid {
                id:                         resistorWindowInputGrid2
                anchors.top:                parent.top
                anchors.topMargin:          application.resistorWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.resistorWindowInputGrid_LeftMargin
                rows:                       6
                columns:                    2
                spacing:                    application.resistorWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                     resistorWindowInputGridLabel4
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.resistorWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel4_Text
                    font.pixelSize:         application.resistorWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput4
                    hoverEnabled:           false
                    placeholderTextColor:   application.resistorWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput4_placeholderText
                    width:                  application.resistorWindowInput_Width
                    onTextChanged:          input.current_carrying_capacity(resistorWindowInputGridInput4.text)
                }

                Text {
                    id:                     resistorWindowInputGridLabel7
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.resistorWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel7_Text
                    font.pixelSize:         application.resistorWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput7
                    hoverEnabled:           false
                    placeholderTextColor:   application.resistorWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput7_placeholderText
                    width:                  application.resistorWindowInput_Width
                    onTextChanged:          input.safety_factor_power(resistorWindowInputGridInput7.text)
                }

                Text {
                    id:                     resistorWindowInputGridLabel3
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.resistorWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel3_Text
                    font.pixelSize:         application.resistorWindowInputLabel_Size
                }

                TextField {
                    id:                     resistorWindowInputGridInput3
                    hoverEnabled:           false
                    placeholderTextColor:   application.resistorWindowInput_placeholderColor
                    placeholderText:        application.resistorWindowInput3_placeholderText
                    width:                  application.resistorWindowInput_Width
                    onTextChanged:          input.safety_factor_power(resistorWindowInputGridInput3.text)
                }
            }
        }

        Rectangle {
            id:                             resistorWindowRectangleInput3
            width:                          application.resistorWindowInputRectangleList_Width
            height:                         application.resistorWindowInputRectangleList_Heigh
            anchors.top:                    resistorWindowRectangleInput1.bottom
            anchors.left:                   parent.left
            anchors.leftMargin:             application.leftMargin
            anchors.topMargin:              application.resistorWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.resistorWindowInputRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border

            Text {
                id:                         resistorWindowInputMainLabel3
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.resistorWindowInputMainLabel3_Text
                anchors.top:                parent.top
                font.pixelSize:             application.resistorWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.resistorWindowInputmainLabel_Color
            }

            Grid {
                id:                         resistorWindowInputGrid3
                anchors.top:                parent.top
                anchors.topMargin:          application.resistorWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.resistorWindowInputGrid_LeftMargin
                rows:                       6
                columns:                    2
                spacing:                    application.resistorWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                     resistorWindowInputGridLabel5
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.resistorWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel5_Text
                    font.pixelSize:         application.resistorWindowInputLabel_Size
                }

                ComboBox {
                    id:                     resistorWindowInputPaste
                    model:                  output_past_list.list
                    width:                  application.resistorWindowInputList_Width
                    onCurrentTextChanged:   input.input_paste(resistorWindowInputPaste.currentText)
                }

                Text {
                    id:                     resistorWindowInputGridLabel6
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.resistorWindowInputLabel_Color
                    text:                   application.resistorWindowInputLabel6_Text
                    font.pixelSize:         application.resistorWindowInputLabel_Size
                }

                ComboBox {
                    id:                     resistorWindowInputCorectionMethod
                    model:                  output_corection_method_list.list
                    width:                  application.resistorWindowInputList_Width
                    onCurrentTextChanged:   input.input_resistance_correction_methods(resistorWindowInputCorectionMethod.currentText)
                }
            }
        }

        Rectangle {
            id:                             resistorWindowRectangleOutput1
            width:                          application.resistorWindowOutputRectangle_Width
            height:                         application.resistorWindowOutputRectangle_Heigh
            anchors.left:                   resistorWindowRectangleInput2.right
            anchors.top:                    parent.top
            anchors.topMargin:              application.resistorWindowInputRectangle_Top
            anchors.leftMargin:             application.resistorWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.resistorWindowOutputRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border


            Text {
                id:                         resistorWindowOutputMainLabel1
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.resistorWindowOutputMainLabel1_Text
                anchors.top:                parent.top
                font.pixelSize:             0
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.resistorWindowInputmainLabel_Color
            }

            Grid {
                id:                         resistorWindowOutputGrid1
                anchors.top:                parent.top
                anchors.topMargin:          application.resistorWindowInputGrid_TopMargin
                anchors.left:               parent.left
                anchors.leftMargin:         application.resistorWindowInputGrid_LeftMargin
                rows:                       6
                columns:                    2
                spacing:                    application.resistorWindowInputGrid_Spacing
                verticalItemAlignment:      Grid.AlignVCenter
                horizontalItemAlignment:    Grid.AlignLeft

                Text {
                    id:                             resistorWindowOutputLabel1
                    text:                           application.resistorWindowOutputLabel1_Text
                    color:                          application.resistorWindowInputLabel_Color
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
                    text:                           application.resistorWindowOutputLabel1_Text
                    color:                          application.resistorWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             resistorWindowOutput2
                    text:                           output_resistor_2.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                }
            }
        }
    }
}
