import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    RowLayout {
        id: rowLayout
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 5

        Button {
            text: qsTr("Menu")
            onClicked: loader.setSource("menu.qml")
        }

        Button {
            text: qsTr("Map")
            onClicked: loader.setSource("map.qml")
        }
    }

    Loader {
        id: loader
        anchors.top: rowLayout.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 5
        source: "map.qml"
    }
}
