/*
 * Quantum Shell - The desktop shell for Quantum OS following Material Design
 * Copyright (C) 2014 Michael Spencer
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.0
import Material 0.1

PopupBase {
    id: popover

    Label {
        id: label

        anchors.centerIn: parent

        width: parent.width - units.dp(32)
        color: Theme.dark.textColor
    }

    width: label.implicitWidth + units.dp(32)
    height: label.implicitHeight + units.dp(24)

    property alias text: label.text

    opacity: showing ? 1 : 0

    Behavior on opacity {
        NumberAnimation { duration: 250 }
    }

    color: Qt.rgba(0,0,0,0.6)

    radius: units.dp(2)
}