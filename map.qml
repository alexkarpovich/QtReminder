import QtQuick 2.5
import QtPositioning 5.6
import QtLocation 5.6

Rectangle {
    anchors.fill: parent

    PositionSource {
        active: true
        onPositionChanged: {
            console.log(position.coordinate)
        }
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: Plugin {name: "osm"}
        center: QtPositioning.coordinate(53.892505, 27.542472)
        zoomLevel: 15
    }
}
