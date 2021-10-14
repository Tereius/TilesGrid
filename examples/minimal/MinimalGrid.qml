import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import TilesGrid 1.0

ColumnLayout {

    TilesGrid {
        rows: 6
        columns: 6
        rowSpacing: 4
        columnSpacing: 4

        background: Rectangle {
            color: "#3D5A80"
        }
    }

    RowLayout {

        Tile {
            color: "#98FB98"
        }

        Tile {
            rowSpan: 2
            columnSpan: 2
            color: "#EE6C4D"
        }
    }
}
