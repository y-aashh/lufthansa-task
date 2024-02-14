import QtQuick
import QtQuick.Layouts
Rectangle {
    height: 1280; width: 720
    color: "black"
    GridLayout {
        anchors.fill: parent
        rows: 6
        columns: 8
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 4
            Layout.columnSpan: 1
        }
        Seats{
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 6
            Layout.rowSpan: 4
            NumberAnimation on backAngle {
                from: 0; to: 85
                duration: 500
            }

            NumberAnimation on footAngle {
                from: 0; to: 90
                duration: 500
            }

            NumberAnimation on headOffset {
                from: 0; to: -20
                duration: 500
            }

            NumberAnimation on cushionHardness {
                from: 0.5; to: 1.5
                duration: 3000
            }
        }

        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 4
            Layout.columnSpan: 1
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
        }
    }

    
}

