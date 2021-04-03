import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0

Item {
    id:                                         chooseWindow

    Rectangle {
        id:                                     chooseWindowBackground
        anchors.fill:                           parent
        anchors.leftMargin:                     application.itemMargin
        anchors.rightMargin:                    application.itemMargin
        color:                                  application.swapWindow_BackgroundColor

        Row {
            id:                                 chooseWindowRow
            anchors.horizontalCenter:           parent.horizontalCenter
            anchors.bottom:                     parent.bottom
            anchors.bottomMargin:               application.chooseWindowButton_Margin
            width:                              application.chooseWindowColumn_Width
            height:                             application.chooseWindowColumn_Heigh


            Column {
                id:                             chooseWindowColumnResistor
                anchors.leftMargin:             0
                anchors.bottomMargin:           0
                anchors.topMargin:              0
                anchors.left:                   parent.left
                anchors.top:                    parent.top
                anchors.bottom:                 parent.bottom
                width:                          application.chooseWindowImage_Width

                Image {
                    id:                         chooseWindowImageResistor
                    anchors.topMargin:          0
                    anchors.top:                parent.top
                    anchors.horizontalCenter:   parent.horizontalCenter
                    width:                      application.chooseWindowImage_Width
                    source:                     application.chooseWindowImageResistor_Path
                    fillMode:                   Image.PreserveAspectFit
                }

                Button {
                    id:                         chooseWindowButtonResistor
                    highlighted:                true
                    anchors.bottomMargin:       0
                    anchors.bottom:             parent.bottom
                    anchors.horizontalCenter:   parent.horizontalCenter
                    font.pointSize:             application.chooseWindowButton_Font
                    text:                       application.chooseWindowButtonResistor_Tittle
                    onClicked:                  swipePage.setCurrentIndex(2)
                }
            }

            Column {
                id:                             chooseWindowColumnCapacitor
                anchors.bottomMargin:           0
                anchors.topMargin:              0
                anchors.rightMargin:            0
                anchors.right:                  parent.right
                anchors.top:                    parent.top
                anchors.bottom:                 parent.bottom
                width:                          application.chooseWindowImage_Width

                Image {
                    id:                         chooseWindowImageCapacitor
                    anchors.topMargin:          0
                    anchors.top:                parent.top
                    anchors.horizontalCenter:   parent.horizontalCenter
                    width:                      application.chooseWindowImage_Width
                    source:                     application.chooseWindowImageCapacitor_Path
                    fillMode:                   Image.PreserveAspectFit
                }

                Button {
                    id:                         chooseWindowButtonCapacitor
                    highlighted:                true
                    anchors.bottomMargin:       0
                    anchors.bottom:             parent.bottom
                    anchors.horizontalCenter:   parent.horizontalCenter
                    text:                       application.chooseWindowButtonCapacitor_Tittle
                    font.pointSize:             application.chooseWindowButton_Font
                    onClicked:                  swipePage.setCurrentIndex(3)
                }
            }
        }

        Button {
            id:                                 chooseWindowButtonPreview
            highlighted:                        true
            anchors.verticalCenter:             parent.verticalCenter
            anchors.left:                       parent.left
            anchors.leftMargin:                 application.buttonPreview_Margin
            width:                              application.buttonPreview_Width
            height:                             application.buttonPreview_Heigh
            text:                               application.buttonPreview_Tittle
            onClicked:                          swipePage.setCurrentIndex(0)
        }
    }
}
