import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.12
import QtQuick.Window 2.15
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs.qml 1.0


ApplicationWindow {
    id: applicationWindow
    visible: true
    color: "#1974c0"
    width: 1000
    height: 500
    minimumHeight: 500
    minimumWidth: 500
    title: 'Main'


    StackLayout {
        id: stackLay
        opacity: 1
        visible: true
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: bar.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 10
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        currentIndex: bar.currentIndex

        Item {
            id: homeTab
            Layout.preferredHeight: 440
            Layout.preferredWidth: 980
            antialiasing: true
            Layout.minimumHeight: 300
            Layout.minimumWidth: 500
            Layout.fillHeight: false
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            SwipeView {
                id: view
                anchors.fill: parent
                layer.enabled: false
                layer.effect: buttonProject
                currentIndex: 0

                Item {
                    id: pageone
                    Rectangle {
                        id: rectangle
                        anchors.fill: parent
                        anchors.topMargin: 0
                        color: "#000000"

                        Column {
                            id: row
                            y: 192
                            width: 171
                            height: 105
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            spacing: 6
                            anchors.leftMargin: 70

                            Button {
                                id: buttonProject
                                width: 200
                                height: 50
                                text: qsTr("Projektowanie")
                                focusPolicy: Qt.ClickFocus
                                layer.enabled: false
                                font.pointSize: 14
                                focus: true
                                antialiasing: true
                                display: AbstractButton.TextBesideIcon
                                checked: true
                                checkable: true
                                autoExclusive: true
                                flat: false
                                autoRepeat: false
                                highlighted: true
                                onClicked: view.setCurrentIndex(1)

                            }

                            Button {
                                id: button_exit
                                width: 200
                                height: 50
                                text: qsTr("Exit")
                                font.hintingPreference: Font.PreferFullHinting
                                font.pointSize: 14
                                antialiasing: true
                                wheelEnabled: true
                                autoExclusive: true
                                checked: true
                                checkable: true
                                highlighted: true
                                flat: true
                                autoRepeat: true
                                onClicked: con.ex()
                            }
                        }

                        Image {
                            id: welcomelogo
                            x: 409
                            y: 140
                            width: 473
                            height: 289
                            anchors.verticalCenter: parent.verticalCenter
                            source: "files/welcome-logo.png"
                            fillMode: Image.PreserveAspectFit
                        }

                    }
                }

                Item {
                    id: pagetwo

                    Rectangle {
                        id: rectangle1
                        color: "#000000"
                        anchors.fill: parent
                        anchors.leftMargin: -15
                        anchors.rightMargin: -15

                        Row {
                            id: row1
                            x: 210
                            width: 543
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 50
                            anchors.topMargin: 50
                            anchors.horizontalCenterOffset: 0
                            anchors.horizontalCenter: parent.horizontalCenter

                            Column {
                                id: column
                                width: 200
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 0
                                anchors.topMargin: 0

                                Image {
                                    id: welcomelogo1
                                    width: 300
                                    anchors.top: parent.top
                                    source: "files/rezystor.png"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.topMargin: 0
                                    fillMode: Image.PreserveAspectFit
                                }

                                Button {
                                    id: button
                                    text: qsTr("REZYSTOR")
                                    anchors.bottom: parent.bottom
                                    font.pointSize: 15
                                    autoExclusive: true
                                    checked: true
                                    checkable: true
                                    highlighted: true
                                    flat: true
                                    autoRepeat: true
                                    anchors.bottomMargin: 50
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    onClicked: view.setCurrentIndex(2)
                                }
                            }

                            Column {
                                id: column1
                                width: 200
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 0
                                anchors.topMargin: 0
                                anchors.rightMargin: 0

                                Image {
                                    id: welcomelogo2
                                    x: 0
                                    width: 300
                                    anchors.top: parent.top
                                    source: "files/kondensator.png"
                                    mipmap: true
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.topMargin: 0
                                    fillMode: Image.PreserveAspectFit
                                }

                                Button {
                                    id: button1
                                    text: qsTr("KONDENSATOR")
                                    anchors.bottom: parent.bottom
                                    autoExclusive: true
                                    checked: true
                                    anchors.bottomMargin: 50
                                    highlighted: true
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    flat: true
                                    font.pointSize: 15
                                    autoRepeat: true
                                    checkable: true
                                    onClicked: view.setCurrentIndex(3)
                                }
                            }
                        }

                        Button {
                            id: button2
                            x: 30
                            y: 100
                            width: 40
                            height: 236
                            text: "<-"
                            checked: true
                            checkable: true
                            autoExclusive: true
                            highlighted: true
                            flat: true
                            autoRepeat: true
                            onClicked: view.setCurrentIndex(0)
                        }
                    }
                }
                Item {
                    id: pagethree

                    Rectangle {
                        color: '#000000'
                        anchors.fill: parent
                        anchors.leftMargin: -15
                        anchors.rightMargin: -15

                        Button {
                            id: button3
                            x: 30
                            y: 100
                            width: 40
                            height: 236
                            text: "<-"
                            checked: true
                            checkable: true
                            autoExclusive: true
                            highlighted: true
                            flat: true
                            autoRepeat: true
                            onClicked: view.setCurrentIndex(1)
                        }
                    }
                }
                Item {
                    id: pagefour

                    Rectangle {
                        color: '#000000'
                        anchors.fill: parent
                        anchors.leftMargin: -15

                        Button {
                            id: button4
                            x: 30
                            y: 100
                            width: 40
                            height: 236
                            text: "<-"
                            checked: true
                            checkable: true
                            autoExclusive: true
                            highlighted: true
                            flat: true
                            autoRepeat: true
                            onClicked: view.setCurrentIndex(1)
                        }
                    }
                }
            }
            PageIndicator {
                id: indicador
                x: 458
                y: 405
                width: 67
                height: 20
                count: view.count
                currentIndex: view.currentIndex
                anchors.bottom: view.bottom
                interactive: true
                anchors.bottomMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Item {
            id: faqTab
            height: 460

            Slider {
                id: vslider
                x: 940
                width: 40
                height: 437
                        orientation: Qt.Vertical
                        anchors.top: parent.top
                        anchors.right: parent.right
                        anchors.bottom: hslider.top

                        value: 1.0 - (flickable.contentY / (flickable.contentHeight - flickable.height))

                        Binding {
                            target: flickable
                            property: "contentY"
                            value: (1.0 - vslider.position) * (flickable.contentHeight - flickable.height)
                            when: vslider.pressed
                        }
            }

            Flickable {
                id: flickable
                x: 0
                y: 21
                width: 323
                height: 293
                flickableDirection: Flickable.VerticalFlick
                contentHeight: dummyContent.height

                Text {
                    id: dummyContent
                    text: "ABC \n\n\n\n\n\n\n\n\n\n\n\n\n\n fd\n\n\n\n\n\n\n\n\n\n\n\n\n\n fd\n\n\n\n\n\n\n\n\n\n\n\n\n\n fd"
                    color: "red"
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: rectangle2
                x: -7
                y: -69
                width: 644
                height: 95
                color: "#1974c0"
            }
        }

        Item {
            id: optionsTab
            height: 460
        }

    }
    TabBar {
        id: bar
        width: 608
        height: 40
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.leftMargin: 10
        focusPolicy: Qt.StrongFocus
        currentIndex: 0
        TabButton {
            x: 0
            y: 0
            width: 181
            height: 40
            text: qsTr("Home")
            onClicked: {
                stackLay.currentIndex(0)
                view.setCurrentIndex(0)
            }
        }
        TabButton {
            x: 182
            y: 0
            width: 202
            height: 40
            text: qsTr("FAQ")
            onClicked: stackLay.currentIndex(1)
        }
        TabButton {
            x: 452
            y: 0
            width: 225
            height: 40
            text: qsTr("Options")
            onClicked: stackLay.currentIndex(2)
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:31}
}
##^##*/
