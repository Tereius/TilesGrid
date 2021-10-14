# TilesGrid

An interactive QML Gird that positions differently sized Tiles and behaves a little bit like Windows 10 Start Menu with live Tiles.

![Demo GIF](https://github.com/Tereius/TilesGrid/raw/master/docs/demo.gif)

## Features and Todo's

* [x] Supports Tiles of any size (any integer multiple of the smallest Tile)
* [x] Customizable logic to avoid Tile collisions
* [x] Supports undo/redo
* [x] Tiles are freely customizable
* [ ] Allow Drag & Drop between different Grids
* [ ] Improve default Tile collision avoidence logic
* [ ] ModelView support
* [ ] Save/Restore
* [ ] Handle resize of the Grid (adding/removing rows or columns)
* [ ] Handle resize of a Tile

## Howto

Copy the folder `TilesGrid` (the one that contains the file `qmldir`) into your project. Make sure that the QMLEngine finds the module: [QQmlEngine::importPathList()](https://doc.qt.io/qt-5.12/qqmlengine.html#importPathList) should contain the path of the directory that **contains** the `TilesGrid` folder (don't add the path of `TilesGrid` folder itself) e.g.:

**Wrong**: `[...]/dev/myproject/src/gui/TilesGrid`

**Correct**: `[...]/dev/myproject/src/gui`

Now you can import the module `TilesGrid 1.0` in your qml file and implement a minimal example

```qml
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
```
