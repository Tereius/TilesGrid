import QtQuick 2.15
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.12
import TilesGrid 1.0

Tile {

    id: tile
    property string text: ""
    property color color: "white"

    opacity: tile.dragActive ? 0.7 : 1

    Behavior on opacity {

        NumberAnimation {
            duration: 200
        }
    }

    Item {

        anchors.fill: parent

        RadialGradient {
            anchors.fill: parent
            id: gradient
            gradient: Gradient {

                GradientStop {
                    id: grad0
                    position: 0.0
                    color: Qt.darker(tile.color, 1.1)
                }

                GradientStop {
                    id: grad1
                    position: 0.5
                    color: Qt.darker(tile.color, 1.4)
                }
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                acceptedButtons: Qt.NoButton
                onPositionChanged: mouse => {
                                       gradient.horizontalOffset = mouse.x - width / 2
                                       gradient.verticalOffset = mouse.y - height / 2
                                   }

                onExited: {
                    gradient.horizontalOffset = gradient.verticalOffset = 0
                }
            }
        }

        Rectangle {

            visible: true
            anchors.fill: parent
            anchors.margins: 3
            color: tile.color
        }

        Label {
            text: tile.text
            anchors.centerIn: parent
            color: "white"
            font.bold: true
            font.pointSize: 12
        }
    }
}
