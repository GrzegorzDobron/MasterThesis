import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs.qml 1.0

Item {
    id:                                         resistorWindow

    Rectangle {
        id:                                     resistorWindowBackground
        color:                                  application.swapWindow_BackgroundColor
        border.color:                           "#000000"
        anchors.fill:                           parent
        anchors.leftMargin:                     -15
        anchors.rightMargin:                    -15

        Button {
            id:                                 resistorWindowButtonPreview
            x:                                  application.buttonPreview_x
            y:                                  application.buttonPreview_y
            width:                              application.buttonPreview_Width
            height:                             application.buttonPreview_Heigh
            text:                               application.buttonPreview_Tittle
            checked:                            true
            checkable:                          true
            autoExclusive:                      true
            highlighted:                        true
            flat:                               true
            autoRepeat:                         true
            onClicked:                          swipePage.setCurrentIndex(1)
        }

        Grid {
            id:                                 grid
            x:                                  115
            y:                                  43
            width:                              241
            height:                             355
            verticalItemAlignment:              Grid.AlignVCenter
            spacing:                            10
            horizontalItemAlignment:            Grid.AlignLeft
            rows:                               6
            columns:                            2

            Text {
                id:                      text1
                x:                       295
                color:                   "#ffffff"
                text:                    application.value
                font.pixelSize:          12
            }

            TextField {
                id:                     textArea
                width:                  171
                height:                 27
                hoverEnabled:           false
                placeholderTextColor:   "#000000"
                placeholderText:        ".write()"
                onTextChanged:          input.read1(textArea.text)
            }

            Text {
                id:                     text2
                color:                  "#ffffff"
                text:                   application.mainWindowButtonExit_Tittle
                font.pixelSize:         12
            }

            TextField {
                id:                     textArea1
                width:                  171
                height:                 27
                hoverEnabled:           false
                placeholderTextColor:   "#000000"
                placeholderText:        ".write()"
                onTextChanged:          input.read2(textArea1.text)
            }
        }

        Button {
            id:                         button
            x:                          598
            y:                          161
            text:                       qsTr("Button")
            onClicked:                  { text2.text = output.text }
        }
    }
}
