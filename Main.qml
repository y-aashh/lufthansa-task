import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


Rectangle {
    height: 640; width: 480
    color: "black"
    function updateSlidersFromMemory() {
            backSlider.outputValue = Math.floor(Math.random() * 90)
            headrestSlider.outputValue = Math.floor(Math.random() * 16)
            hardnessState.myState = Math.floor(Math.random() * 3)
            footSlider.outputValue = Math.floor(Math.random() * 90)

            //console.log("Values updated from memory:", slider1Value, slider2Value, slider3Value)
        }  
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

            icon.source: "./Assets/home-icon.png"
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2

            icon.source: "./Assets/seat-icon.png"
            
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
            text: "placeholder"
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
            text: "placeholder"
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
            id: "seats"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 6
            Layout.rowSpan: 4
            back_angle: backSlider.outputValue
            foot_angle: footSlider.outputValue
            head_offset: headrestSlider.outputValue
            cushion_hardness: hardnessState.myState
        }

        SliderWithButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1

            id: "headrestSlider"
            fromValue: 0; toValue: 16
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

        // SliderWithButton {
        //     Layout.fillHeight: true
        //     Layout.fillWidth: true
        //     Layout.preferredWidth: Layout.columnSpan
        //     Layout.preferredHeight: Layout.rowSpan
        //     Layout.rowSpan: 2
        //     Layout.columnSpan: 1

        //     id: "hardnessSlider"
        //     fromValue: 0.4; toValue: 1.0
        //     stepSizeValue: 0.2 
        //     jumpSize: 0.2
        // }   

        ThreeButtonRow{
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1

            id: "hardnessState"
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

            text: "Randomize"
            onClicked: {
                updateSlidersFromMemory()
            }
        }
    }

    
}

