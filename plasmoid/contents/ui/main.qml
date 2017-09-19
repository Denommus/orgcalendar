// Org Calendar plasmoid
// Copyright (C) 2017 Yuri Albuquerque

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents

ScrollView {
  clip: true
  Layout.minimumHeight: 50
  Layout.minimumWidth: 50
  Plasmoid.preferredRepresentation: Plasmoid.fullRepresentation
  Layout.maximumWidth: plasmoid.screenGeometry.width
  Layout.maximumHeight: plasmoid.screenGeometry.height


  ListView {
    orientation: ListView.Vertical
    interactive: true
    spacing: 10

    delegate: Component {
      ColumnLayout {
        height: 50
        Text {
          text: foo
        }
        Text {
          text: baz
        }
      }
    }

    model: ListModel {
      id: todoList
      ListElement {
        foo: "bar1"
        baz: "blah1"
      }
      ListElement {
        foo: "bar2"
        baz: "blah2"
      }
      ListElement {
        foo: "bar3"
        baz: "blah3"
      }
      ListElement {
        foo: "bar4"
        baz: "blah4"
      }
      ListElement {
        foo: "bar5"
        baz: "blah5"
      }
      ListElement {
        foo: "bar6"
        baz: "blah6"
      }
    }
  }
}
