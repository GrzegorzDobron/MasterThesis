import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0


Item {
    id: windowFAQ

        Rectangle {
        id:                             faqWindowBackground
        anchors.fill:                   parent
        anchors.leftMargin:             0
        anchors.rightMargin:            0
        color:                          application.swapWindow_BackgroundColor

        Slider {
            id:                     vslider
            x:                      application.faqWindowSlider_x
            width:                  application.faqWindowSlider_Width
            height:                 application.faqWindowSlider_Height
            anchors.verticalCenter: parent.verticalCenter
            orientation:            Qt.Vertical
            anchors.right:          parent.right
            anchors.bottom:         vslider.top
            value:                  1.0 - (flickable.contentY / (flickable.height - flickable.contentHeight))

            Binding {
                target:             flickable
                property:           "contentY"
                value:              (1.0 - vslider.position) * (flickable.height - flickable.contentHeight)
                when:               vslider.pressed
                }
            }

        Flickable {
            id:                     flickable
            anchors.verticalCenter: parent.verticalCenter
            anchors.left:           parent.left
            flickableDirection:     Flickable.VerticalFlick
            contentHeight:          dummyContent.height
            width:                  application.faqWindowFlickable_Width
            height:                 application.faqWindowFlickable_Height
            anchors.leftMargin:     application.faqWindowLeftMargin

            Text {
                id:                 dummyContent
                anchors.fill:       parent
                text:               output_faq.faq_text()
                color:              application.color_thema_text
                font.pixelSize:     application.faqWindowText_size
            }
        }
    }
}
