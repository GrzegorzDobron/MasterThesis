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
        id:                         optionsWindowBackground
        anchors.fill:               parent
        anchors.leftMargin:         0
        anchors.rightMargin:        0
        color:                      application.swapWindow_BackgroundColor

        Rectangle {
            id:                         optionsWindowRectangle1
            x:                          54
            y:                          117
            width:                      127
            height:                     180
            color:                      application.color_thema
            border.color:               application.elementWindowRectangleBorder_Color
            border.width:               application.resistorWindowInputRectangle_Border

            ColumnLayout {
                x: 49
                y: 25
                anchors.verticalCenter:         parent.verticalCenter
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter:       parent.horizontalCenter

                Text {
                    id:                     text1212
                    text:                   qsTr("MOTYW:")
                    font.pixelSize:         12
                    horizontalAlignment:    Text.AlignHCenter
                    Layout.alignment:       Qt.AlignHCenter | Qt.AlignVCenter
                    color:                  application.color_thema_text
                }

                RadioButton {
                    checked:                true
                    text:                   "ciemny"

                    onClicked: {
                        application.color_thema                             = application.color_dark
                        application.color_thema_text                        = application.color_white
                        application.chooseWindowImageResistor_Path          = "files/resistor.png"
                        application.chooseWindowImageCapacitor_Path         = "files/capacitor.png"
                    }
                }
                RadioButton {
                    text:                   qsTr("jasny")

                    onClicked: {
                        application.color_thema                             = application.color_light
                        application.color_thema_text                        = application.color_black
                        application.chooseWindowImageResistor_Path          = "files/resistor_light.png"
                        application.chooseWindowImageCapacitor_Path         = "files/capacitor_light.png"
                    }
                }
            }
        }
    }
}
