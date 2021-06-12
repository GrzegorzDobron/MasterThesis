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
            color:                      application.swapWindow_BackgroundColor
            border.color:               application.elementWindowRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border // zmiana
            width:                      application.capacitorindowInputRectangle1_Width
            height:                     application.capacitorindowInputRectangle1_Heigh


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
                rows:                       3
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
                    onTextChanged:          input_capacitor.input_capacity(capacitorWindowInputGridInput1.text)
                    // zmiana
                }

                Text {
                    id:                     capacitorWindowInputGridLabel2
                    horizontalAlignment:    Text.AlignRight
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel2_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                TextField {
                    id:                     capacitorWindowInputGridInput2
                    hoverEnabled:           false
                    placeholderTextColor:   application.elementWindowInput_placeholderColor
                    placeholderText:        application.capacitorWindowInput2_placeholderText
                    width:                  application.elementWindowInput_Width
                    onTextChanged:          input_capacitor.input_number_layer(capacitorWindowInputGridInput2.text)
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
                    onTextChanged:          input_capacitor.input_thickness_layer(capacitorWindowInputGridInput3.text)
                    // zmiana
                }
            }
        }

        // Rectangle {
        //     id:                             capacitorWindowRectangleInput2
        //     width:                          application.elementWindowInputRectangle2_Width
        //     height:                         application.elementWindowInputRectangle_Heigh
        //     anchors.left:                   capacitorWindowRectangleInput1.right
        //     anchors.top:                    parent.top
        //     anchors.topMargin:              application.elementWindowInputRectangle_Top
        //     anchors.leftMargin:             application.elementWindowInputRectangle_Spacing
        //     color:                          application.swapWindow_BackgroundColor
        //     border.color:                   application.elementWindowRectangleBorder_Color
        //     border.width:                   application.resistorWindowInputRectangle_Border // zmiana
//
//
        //     Text {
        //         id:                         capacitorWindowInputMainLabel2
        //         horizontalAlignment:        Text.AlignHCenter
        //         text:                       application.capacitorWindowInputMainLabel2_Text
        //         anchors.top:                parent.top
        //         font.pixelSize:             application.elementWindowInputMainLabel_Size
        //         anchors.topMargin:          7
        //         anchors.horizontalCenter:   parent.horizontalCenter
        //         color:                      application.elementWindowInputmainLabel_Color
        //     }
//
        //     Grid {
        //         id:                         capacitorWindowInputGrid2
        //         anchors.top:                parent.top
        //         anchors.topMargin:          application.elementWindowInputGrid_TopMargin
        //         anchors.left:               parent.left
        //         anchors.leftMargin:         application.elementWindowInputGrid_LeftMargin
        //         rows:                       6
        //         columns:                    2
        //         spacing:                    application.elementWindowInputGrid_Spacing
        //         verticalItemAlignment:      Grid.AlignVCenter
        //         horizontalItemAlignment:    Grid.AlignLeft
//
        //         Text {
        //             id:                     capacitorWindowInputGridLabel4
        //             horizontalAlignment:    Text.AlignRight
        //             color:                  application.elementWindowInputLabel_Color
        //             text:                   application.capacitorWindowInputLabel4_Text
        //             font.pixelSize:         application.elementWindowInputLabel_Size
        //         }
//
        //         TextField {
        //             id:                     capacitorWindowInputGridInput4
        //             hoverEnabled:           false
        //             placeholderTextColor:   application.elementWindowInput_placeholderColor
        //             placeholderText:        application.capacitorWindowInput4_placeholderText
        //             width:                  application.elementWindowInput_Width
        //             // onTextChanged:          input.current_carrying_capacity(capacitorWindowInputGridInput4.text)
        //         }
//
        //         Text {
        //             id:                     capacitorWindowInputGridLabel7
        //             horizontalAlignment:    Text.AlignRight
        //             color:                  application.elementWindowInputLabel_Color
        //             text:                   application.capacitorWindowInputLabel7_Text
        //             font.pixelSize:         application.elementWindowInputLabel_Size
        //         }
//
        //         TextField {
        //             id:                     capacitorWindowInputGridInput7
        //             hoverEnabled:           false
        //             placeholderTextColor:   application.elementWindowInput_placeholderColor
        //             placeholderText:        application.capacitorWindowInput7_placeholderText
        //             width:                  application.elementWindowInput_Width
        //             // onTextChanged:          input.safety_factor_power(capacitorWindowInputGridInput7.text)
        //           }
//
        //         Text {
        //             id:                     capacitorWindowInputGridLabel3
        //             horizontalAlignment:    Text.AlignRight
        //             color:                  application.elementWindowInputLabel_Color
        //             text:                   application.capacitorWindowInputLabel3_Text
        //             font.pixelSize:         application.elementWindowInputLabel_Size
        //         }
//
        //         TextField {
        //             id:                     capacitorWindowInputGridInput3
        //             hoverEnabled:           false
        //             placeholderTextColor:   application.elementWindowInput_placeholderColor
        //             placeholderText:        application.capacitorWindowInput3_placeholderText
        //             width:                  application.elementWindowInput_Width
        //             // onTextChanged:          input.safety_factor_power(capacitorWindowInputGridInput3.text)
        //         }
        //     }
        // }

        Rectangle {
            id:                             capacitorWindowRectangleInput3
            width:                          application.capacitorindowInputRectangleList_Width
            height:                         application.capacitorindowInputRectangleList_Heigh
            anchors.top:                    capacitorWindowRectangleInput1.bottom
            anchors.left:                   parent.left
            anchors.leftMargin:             application.leftMargin
            anchors.topMargin:              application.elementWindowInputRectangle_Spacing
            color:                          application.swapWindow_BackgroundColor
            border.color:                   application.elementWindowRectangleBorder_Color
            border.width:                   application.resistorWindowInputRectangle_Border

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
                    model:                  output_past_list_dielectric.list
                    width:                  application.elementWindowInputList_Width
                    onCurrentTextChanged:   input_capacitor.input_paste(capacitorWindowInputPaste.currentText)
                }

                Text {
                    id:                     capacitorWindowInputGridLabel6
                    horizontalAlignment:    Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    color:                  application.elementWindowInputLabel_Color
                    text:                   application.capacitorWindowInputLabel6_Text
                    font.pixelSize:         application.elementWindowInputLabel_Size
                }

                ComboBox {
                    id:                     capacitorWindowInputCorectionMethod
                    model:                  output_manufactoring_method_list.list
                    width:                  application.elementWindowInputList_Width
                    onCurrentTextChanged:   input_capacitor.input_manufactoring_method(capacitorWindowInputCorectionMethod.currentText)
                    // zmiana
                }
            }
        }

        Rectangle {
            id:                             capacitorWindowRectangleOutput1
            width:                          application.capacitorindowOutputRectangle_Width
            height:                         application.capacitorindowOutputRectangle_Heigh
            anchors.left:                   capacitorWindowRectangleInput3.right
            anchors.top:                    parent.top
            anchors.leftMargin:             application.capacitorindowOutputRectangle_LeftMargin
            anchors.topMargin:              application.elementWindowInputRectangle_Top
            color:                          application.swapWindow_BackgroundColor
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
                    text:                           output_capacitor_1.text
                    color:                          application.elementWindowOutputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutputLabel2
                    text:                           application.capacitorWindowOutputLabel2_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutput2
                    text:                           output_capacitor_2.text
                    color:                          application.elementWindowOutputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutputLabel3
                    text:                           application.capacitorWindowOutputLabel3_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutput3
                    text:                           output_capacitor_3.text
                    color:                          application.elementWindowOutputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutputLabel4
                    text:                           application.capacitorWindowOutputLabel4_Text
                    color:                          application.elementWindowInputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }

                Text {
                    id:                             capacitorWindowOutput4
                    text:                           output_capacitor_4.text
                    color:                          application.elementWindowOutputLabel_Color
                    font.pixelSize:                 application.bigTextSize
                }
            }
        }
    }
}
