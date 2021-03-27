import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs.qml 1.0

Item {
    id: windowFAQ

    Slider {
        id:                 vslider
        x:                  940
        width:              40
        height:             437
        orientation:        Qt.Vertical
        anchors.top:        parent.top
        anchors.right:      parent.right
        anchors.bottom:     vslider.top
        value:              1.0 - (flickable.contentY / (flickable.contentHeight - flickable.height))

        Binding {
            target:         flickable
            property:       "contentY"
            value:          (1.0 - vslider.position) * (flickable.contentHeight - flickable.height)
            when:           vslider.pressed
            }
        }

    Flickable {
        id:                 flickable
        x:                  0
        y:                  21
        width:              323
        height:             293
        flickableDirection: Flickable.VerticalFlick
        contentHeight:      dummyContent.height

        Text {
            id:             dummyContent
            text:           "output.faq_text()"
            color:          "red"
            font.pixelSize: 12
        }
    }

    Rectangle {
        id:                 rectangle2
        x:                  -7
        y:                  -69
        width:              644
        height:             95
        color:              application.color_blue
    }
}
