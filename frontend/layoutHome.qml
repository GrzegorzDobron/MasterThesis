import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Dialogs.qml 1.0

Item {
    id:                         windowHome
    Layout.preferredHeight:     440
    Layout.preferredWidth:      980
    Layout.fillHeight:          false
    Layout.fillWidth:           false
    Layout.alignment:           Qt.AlignHCenter | Qt.AlignVCenter
    antialiasing:               true

    SwipeView {
        id:                     swipePage
        anchors.fill:           parent
        layer.enabled:          true
        currentIndex:           0
        interactive:            true

        LayoutHomeWelcome       { id: layoutHomeWelcome   }
        LayoutHomeChoose        { id: layoutHomeChoose    }
        LayoutHomeResistor      { id: layoutHomeResistor  }
        LayoutHomeCapacitor     { id: layoutHomeCapacitor }
    }

    PageIndicator {
        id:                         pageIndicator
        wheelEnabled:               true
        interactive:                true
        anchors.horizontalCenter:   parent.horizontalCenter
        width:                      application.pageIndicator_Width
        height:                     application.pageIndicator_Heigh
        anchors.bottomMargin:       application.pageIndicator_Margin
        count:                      swipePage.count
        currentIndex:               swipePage.currentIndex
        anchors.bottom:             swipePage.bottom

    }
}
