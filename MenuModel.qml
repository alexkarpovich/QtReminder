import QtQuick 2.0

ListModel {
    ListElement {
        name: "Map view"
        componentUrl: "map.qml"
    }

    ListElement {
        name: "Calendar view"
        componentUrl: "calendar.qml"
    }

    ListElement {
        name: "Profile"
        componentUrl: "profile.qml"
    }
}
