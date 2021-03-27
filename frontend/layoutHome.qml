import QtQuick 2.11
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.12
import QtQuick.Window 2.2
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs.qml 1.0

Item {
    id:                         windowHome
    Layout.preferredHeight:     440
    Layout.preferredWidth:      980
    Layout.minimumHeight:       300
    Layout.minimumWidth:        500
    Layout.fillHeight:          false
    Layout.fillWidth:           false
    Layout.alignment:           Qt.AlignHCenter | Qt.AlignVCenter
    antialiasing:               true

    SwipeView {
        id:                     swipePage
        anchors.fill:           parent
        layer.enabled:          false
        currentIndex:           2

        LayoutHomeWelcome {
            id:                 layoutHomeWelcome
        }

        LayoutHomeChoose {
            id:                 layoutHomeChoose
        }

        LayoutHomeResistor {
            id:                 layoutHomeResistor
        }

        LayoutHomeCapacitor {
            id:                 layoutHomeCapacitor
        }
    }

    PageIndicator {
        id:                                             pageIndicator
        x:                                              application.pageIndicator_x
        y:                                              application.pageIndicator_y
        width:                                          application.pageIndicator_Width
        height:                                         application.pageIndicator_Heigh
        count:                                          swipePage.count
        currentIndex:                                   swipePage.currentIndex
        anchors.bottom:                                 swipePage.bottom
        wheelEnabled:                                   false
        interactive:                                    true
        anchors.bottomMargin:                           15
        anchors.horizontalCenter:                       parent.horizontalCenter
    }
}