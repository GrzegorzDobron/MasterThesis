import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0

Item {
    id:                                 capacitorWindow

    Rectangle {
        id:                             capacitorWindowBackground
        anchors.fill:                   parent
        anchors.leftMargin:             application.itemMargin
        anchors.rightMargin:            application.itemMargin
        color:                          application.swapWindow_BackgroundColor

        Button {
            id:                         capacitorWindowButtonPreview
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
            id:                         capacitorWindowRectangleInput1
            anchors.left:               parent.left
            anchors.top:                parent.top
            anchors.leftMargin:         application.leftMargin
            anchors.topMargin:          application.elementWindowInputRectangle_Top
            color:                      application.color_black
            border.color:               application.elementWindowRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border // zmiana
            width:                      application.elementWindowInputRectangle1_Width
            height:                     application.elementWindowInputRectangle_Heigh


            Text {
                id:                         capacitorWindowInputMainLabel1
                text:                       application.capacitorWindowInputMainLabel1_Text
                horizontalAlignment:        Text.AlignHCenter
                anchors.top:                parent.top
                color:                      application.elementWindowInputmainLabel_Color
                font.pixelSize:             application.elementWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
            }

            Grid {
                id:                         capacitorWindowInputGrid
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
                    id:                     capacitorWindowInputGridLabel1
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel1_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     capacitorWindowInputGridInput1
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.capacitorWindowInput1_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.input_final_resistance(capacitorWindowInputGridInput1.text)
                    // zmiana
                }

                Text {
                    id:                     capacitorWindowInputGridLabel2
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorrWindowInputLabel2_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     capacitorWindowInputGridInput2
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.capacitorWindowInput2_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.input_current_max(capacitorWindowInputGridInput2.text)
                    // zmiana
                }

                Text {
                    id:                     capacitorWindowInputGridLabel8
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel8_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     capacitorWindowInputGridInput8
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.capacitorWindowInput8_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.input_power_max(capacitorWindowInputGridInput8.text)
                    // zmiana
                }
            }
        }

        Rectangle {
            id:                             capacitorWindowRectangleInput2
            width:                          application.elementWindowInputRectangle2_Width
            height:                         application.elementWindowInputRectangle_Heigh
            anchors.left:                   capacitorWindowRectangleInput1.right
            anchors.top:                    parent.top
            anchors.topMargin:              application.elementWindowInputRectangle_Top
            anchors.leftMargin:             application.elementWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.elementWindowRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border // zmiana


            Text {
                id:                         capacitorWindowInputMainLabel2
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.capacitorWindowInputMainLabel2_Text
                anchors.top:                parent.top
                font.pixelSize:             application.elementWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.elementWindowInputmainLabel_Color
            }

            Grid {
                id:                         capacitorWindowInputGrid2
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
                    id:                     capacitorWindowInputGridLabel4
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel4_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     capacitorWindowInputGridInput4
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.capacitorWindowInput4_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.current_carrying_capacity(capacitorWindowInputGridInput4.text)
                    // zmiana
                }

                Text {
                    id:                     capacitorWindowInputGridLabel7
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel7_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     capacitorWindowInputGridInput7
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.capacitorWindowInput7_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.safety_factor_power(capacitorWindowInputGridInput7.text)
                    // zmiana
                }

                Text {
                    id:                     capacitorWindowInputGridLabel3
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel3_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     capacitorWindowInputGridInput3
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.capacitorWindowInput3_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input.safety_factor_power(capacitorWindowInputGridInput3.text)
                }
            }
        }

        Rectangle {
            id:                             capacitorWindowRectangleInput3
            width:                          application.elementWindowInputRectangleList_Width
            height:                         application.elementWindowInputRectangleList_Heigh
            anchors.top:                    capacitorWindowRectangleInput1.bottom
            anchors.left:                   parent.left
            anchors.leftMargin:             application.leftMargin
            anchors.topMargin:              application.elementWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.elementWindowRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border
            // zmiana

            Text {
                id:                         capacitorWindowInputMainLabel3
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.capacitorWindowInputMainLabel3_Text
                anchors.top:                parent.top
                font.pixelSize:             application.elementWindowInputMainLabel_Size
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.elementWindowInputmainLabel_Color
            }

            Grid {
                id:                         capacitorWindowInputGrid3
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
                    id:                     capacitorWindowInputGridLabel5
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel5_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                ComboBox {
                    id:                     capacitorWindowInputPaste
                    model:                  output_past_list.list
                    width:                  application.elementWindowInputList_Width
                    onCurrentTextChanged:   input.input_paste(resistorWindowInputPaste.currentText)
                    // zmiana
                }

                Text {
                    id:                     capacitorWindowInputGridLabel6
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel6_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                ComboBox {
                    id:                     capacitorWindowInputCorectionMethod
                    model:                  output_corection_method_list.list
                    width:                  application.elementWindowInputList_Width
                    onCurrentTextChanged:   input.input_resistance_correction_methods(resistorWindowInputCorectionMethod.currentText)
                    // zmiana
                }
            }
        }

        Rectangle {
            id:                             capacitorWindowRectangleOutput1
            width:                          application.elementWindowOutputRectangle_Width
            height:                         application.elementWindowOutputRectangle_Heigh
            anchors.left:                   capacitorWindowRectangleInput2.right
            anchors.top:                    parent.top
            anchors.topMargin:              application.elementWindowInputRectangle_Top
            anchors.leftMargin:             application.elementWindowInputRectangle_Spacing
            color:                          application.color_black
            border.color:                   application.windowOutputRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border
            // zmiana


            Text {
                id:                         capacitorWindowOutputMainLabel1
                horizontalAlignment:        Text.AlignHCenter
                text:                       application.capacitorWindowOutputMainLabel1_Text
                anchors.top:                parent.top
                font.pixelSize:             0
                anchors.topMargin:          7
                anchors.horizontalCenter:   parent.horizontalCenter
                color:                      application.elementWindowInputmainLabel_Color
            }

            Grid {
                id:                         capacitorWindowOutputGrid1
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
                    id:                             capacitorWindowOutputLabel1
                    text:                           application.capacitorWindowOutputLabel1_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutput1
                    text:                           output_resistor_1.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                    // zmiana
                }

                Text {
                    id:                             capacitorWindowOutputLabel2
                    text:                           application.capacitorWindowOutputLabel2_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutput2
                    text:                           output_resistor_2.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                    // zmiana
                }

                Text {
                    id:                             capacitorWindowOutputLabel3
                    text:                           application.capacitorWindowOutputLabel3_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutput3
                    text:                           output_resistor_3.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                    // zmiana
                }

                Text {
                    id:                             capacitorWindowOutputLabel4
                    text:                           application.capacitorWindowOutputLabel4_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutput4
                    text:                           output_resistor_4.text
                    color:                          "green"
                    font.pixelSize:                 application.bigTextSize
                    // zmiana
                }
            }

            Button {
                id:                         capacitorWindowButtonGraph
                highlighted:                true
                width:                      application.elementWindowButton_Width
                height:                     application.elementWindowButton_Heigh
                text:                       application.elementWindowButtonGraph_Tittle
                anchors.bottom:             parent.bottom
                anchors.bottomMargin:       5
                anchors.horizontalCenter:   parent.horizontalCenter
                font.pointSize:             application.elementWindowButtonGraph_Font
                onClicked:                  static.capacitor_wykres()
            }
        }
    }
}
