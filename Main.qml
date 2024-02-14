import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
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
        SliderWithButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1

            id: "backSlider"
            fromValue: 0; toValue: 85
        }
        Seats{
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 6
            Layout.rowSpan: 4
            backAngle: backSlider.outputValue
            footAngle: footSlider.outputValue
            headOffset: headrestSlider.outputValue
            cushionHardness: hardnessSlider.outputValue
        }

        SliderWithButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1

            id: "headrestSlider"
            fromValue: 0; toValue: -20
        }

        SliderWithButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1

            id: "footSlider"
            fromValue: 0; toValue: 85
            
        }

        SliderWithButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1

            id: "hardnessSlider"
            fromValue: 0.4; toValue: 1.0
            stepSizeValue: 0.2 
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

