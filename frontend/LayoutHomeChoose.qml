import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs.qml 1.0

Item {
    id:                                         chooseWindow

    Rectangle {
        id:                                     chooseWindowBackground
        color:                                  application.swapWindow_BackgroundColor
        anchors.fill:                           parent
        anchors.leftMargin:                     -15
        anchors.rightMargin:                    -15

        Row {
            id:                                 chooseWindowRow
            x:                                  210
            width:                              543
            anchors.top:                        parent.top
            anchors.bottom:                     parent.bottom
            anchors.bottomMargin:               50
            anchors.topMargin:                  50
            anchors.horizontalCenterOffset:     0
            anchors.horizontalCenter:           parent.horizontalCenter

            Column {
                id:                             chooseWindowColumnResistor
                width:                          200
                anchors.top:                    parent.top
                anchors.bottom:                 parent.bottom
                anchors.bottomMargin:           0
                anchors.topMargin:              0

                Image {
                    id:                         chooseWindowImageResistor
                    width:                      application.chooseWindowImage_Width
                    anchors.top:                parent.top
                    source:                     application.chooseWindowImageResistor_Path
                    anchors.horizontalCenter:   parent.horizontalCenter
                    anchors.topMargin:          0
                    fillMode:                   Image.PreserveAspectFit
                }

                Button {
                    id:                         chooseWindowButtonResistor
                    text:                       application.chooseWindowButtonResistor_Tittle
                    anchors.bottom:             parent.bottom
                    font.pointSize:             application.chooseWindoweButton_Font
                    autoExclusive:              true
                    checked:                    true
                    checkable:                  true
                    highlighted:                true
                    flat:                       true
                    autoRepeat:                 true
                    anchors.bottomMargin:       50
                    anchors.horizontalCenter:   parent.horizontalCenter
                    onClicked:                  swipePage.setCurrentIndex(2)
                }
            }

            Column {
                id:                             chooseWindowColumnCapacitor
                width:                          application.chooseWindowColumn_Width
                anchors.right:                  parent.right
                anchors.top:                    parent.top
                anchors.bottom:                 parent.bottom
                anchors.bottomMargin:           0
                anchors.topMargin:              0
                anchors.rightMargin:            0

                Image {
                    id:                         chooseWindowImageCapacitor
                    x:                          0
                    width:                      application.chooseWindowImage_Width
                    anchors.top:                parent.top
                    source:                     application.chooseWindowImageCapacitor_Path
                    mipmap:                     true
                    anchors.horizontalCenter:   parent.horizontalCenter
                    anchors.topMargin:          0
                    fillMode:                   Image.PreserveAspectFit
                }

                Button {
                    id:                         chooseWindowButtonCapacitor
                    text:                       application.chooseWindowButtonCapacitor_Tittle
                    anchors.bottom:             parent.bottom
                    autoExclusive:              true
                    checked:                    true
                    anchors.bottomMargin:       50
                    highlighted:                true
                    anchors.horizontalCenter:   parent.horizontalCenter
                    flat:                       true
                    font.pointSize:             application.chooseWindoweButton_Font
                    autoRepeat:                 true
                    checkable:                  true
                    onClicked:                  swipePage.setCurrentIndex(3)
                }
            }
        }

        Button {
            id:                                 chooseWindowButtonPreview
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
            onClicked:                          swipePage.setCurrentIndex(0)
        }
    }
}