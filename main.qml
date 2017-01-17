import QtQuick 2.5
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("QtReminder")

    header: ToolBar {
        background: Rectangle {
            color: "#ffffff"
            border.width: 1
            border.color: "#eeeeee"
        }

        RowLayout {
            anchors.fill: parent

            ToolButton {
                Image {
                    source: "images/menu.svg"
                    anchors.fill: parent
                    anchors.margins: 4
                }

                onClicked: {
                    drawer.position > 0 ? drawer.close() : drawer.open()
                }
            }

            ToolButton {
                anchors.right: parent.right

                Image {
                    source: "images/plus.svg"
                    anchors.fill: parent
                    anchors.margins: 10
                }

                onClicked: {
                    drawer.position > 0 ? drawer.close() : drawer.open()
                }
            }
        }
    }

    Drawer {
        id: drawer
        y: header.height
        width: 0.66 * parent.width
        height: parent.height - header.height

        ListView {
            width: parent.width
            height: parent.height
            model: MenuModel {}
            delegate: Button {
                id: button
                anchors.left: parent.left
                anchors.right: parent.right
                text: name
                onClicked: loader.setSource(componentUrl)

                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    color: button.down ? "#d6d6d6" : "#ffffff"
                    border.width: 0
                }
            }
        }
    }

    Loader {
        id: loader
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        source: "map.qml"
    }
}
