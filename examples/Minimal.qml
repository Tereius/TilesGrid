import QtQuick 2.15
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.12
import TilesGrid 1.0

Item {

    implicitHeight: layout.implicitHeight
    implicitWidth: layout.implicitWidth

    Rectangle {
        color: Qt.lighter("#3D5A80", 1.5)
        anchors.fill: parent
    }

    ColumnLayout {

        id: layout
        objectName: "test"

        TileLayout {

            id: tyleLayout
            focus: true
            rows: 10
            columns: 10

            highlightDelegate: Item {

                Rectangle {
                    id: rec
                    anchors.fill: parent
                    color: Qt.darker("#3D5A80", 1.2)
                    visible: false
                }

                DropShadow {
                    anchors.fill: rec
                    radius: 12.0
                    spread: 0.25
                    samples: radius * 2
                    color: rec.color
                    source: rec
                }
            }

            background: Rectangle {
                color: "#3D5A80"
            }

            Label {
                text: "Drag & Drop\n☟"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 1.5
                font.pointSize: 20
                color: "white"
                anchors.centerIn: parent
                opacity: tyleLayout.count <= 0 ? 1 : 0

                Behavior on opacity {
                    NumberAnimation {
                        duration: 500
                    }
                }
            }
        }

        RowLayout {

            FancyTile {

                text: "1 x 1"
                color: "#98C1D9"
            }

            FancyTile {

                rowSpan: 2
                text: "2 x 1"
                color: "#98C1D9"
            }

            FancyTile {

                columnSpan: 2
                text: "1 x 2"
                color: "#E0FBFC"
            }

            FancyTile {

                rowSpan: 2
                columnSpan: 2
                text: "2 x 2"
                color: "#EE6C4D"
            }
        }
    }
}
