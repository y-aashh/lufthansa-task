import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Shapes

Rectangle {
    id: "window"
    height: 640; width: 480
    color: "black"
    property int currentState: 0
    property int stateA_cushion_hardness: 0
    property int stateA_foot_angle: 0
    property int stateA_back_angle: 0
    property int stateA_head_offset: 0

    property int stateB_cushion_hardness: 0
    property int stateB_foot_angle: 0
    property int stateB_back_angle: 0
    property int stateB_head_offset: 0

    property int stateC_cushion_hardness: 0
    property int stateC_foot_angle: 0
    property int stateC_back_angle: 0
    property int stateC_head_offset: 0
    Rectangle {
        id: backgroundRect
        color: "black"
        opacity: 0.7
        visible: popup.visible
        anchors.fill: parent
        z: popup.z - 1
    }
    Item {
        id: popup
        width: 100
        height: 50
        visible: false
        z: 99
        x: (parent.width - popup.width) / 2
        y: (parent.height - popup.height) / 2
        Rectangle {
            width: parent.width
            height: parent.height
            color: "black"
            radius: 5
            border.color: "#000066"

            Text {
                anchors.centerIn: parent
                text: "Saved"
                font.pixelSize: 18
                color: "lightgray"
            }
        }

        Behavior on visible {
            NumberAnimation { duration: 300 }
        }

        Timer {
            id: popupTimer
            interval: 1000
            onTriggered: {
                popup.visible = false
            }
        }
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
            enabled: false
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
            enabled: false
        }
        Button {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: 2
            text: "placeholder"
            enabled: false
        }
        SliderWithButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1
            id: "backSlider"
            fromValue: 0; toValue: 90
            NumberAnimation on outputValue {
                id: "backSliderAnimation"
                duration: 1000
                running: false
            } 
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
            fromValue: 0; toValue: 10
            NumberAnimation on outputValue {
                id: "headrestSliderAnimation"
                duration: 1000
                running: false
            } 
        }

        SliderWithButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1
            id: "footSlider"
            fromValue: 0; toValue: 90
            NumberAnimation on outputValue {
                id: "footSliderAnimation"
                duration: 1000
                running: false
            } 
            
        } 
        StateButtonColumn{
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1
            id: "hardnessState"
            NumberAnimation on myState {
                id: "hardnessStateAnimation"
                duration: 1000
                running: false
            } 
        }
        Column {
            id: "stateA"
            Shape {
                ShapePath {
                    fillColor: "black"
                    strokeColor: "gray"
                    strokeWidth: currentState == 0? 5 : 2
                    capStyle: ShapePath.FlatCap
                    startX: 0; startY: 0
                    PathLine {x: stateA.width; y: 0}
                }
            }
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            topPadding: 10
            Layout.columnSpan: currentState == 0? 4 : 2
            Text {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Position A"
                font.family: "Helvetica"
                font.pointSize: currentState == 0? 22 : 12
                color: "white"
            }
            Button {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Save"
                onClicked: {
                    popup.visible = true
                    popupTimer.start()
                    currentState = 0
                    stateA_cushion_hardness = hardnessState.myState
                    stateA_foot_angle = footSlider.outputValue
                    stateA_back_angle = backSlider.outputValue
                    stateA_head_offset = headrestSlider.outputValue
                }
            }
            Button {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Load"
                onClicked: {
                    currentState = 0
                    hardnessStateAnimation.to = stateA_cushion_hardness
                    hardnessStateAnimation.start()
                    footSliderAnimation.to = stateA_foot_angle
                    footSliderAnimation.start()
                    backSliderAnimation.to = stateA_back_angle
                    backSliderAnimation.start()
                    headrestSliderAnimation.to = stateA_head_offset
                    headrestSliderAnimation.start()
                }
            }    
        }
        Column {
            id: "stateB"
            Shape {
                ShapePath {
                    fillColor: "black"
                    strokeColor: "gray"
                    strokeWidth: currentState == 1? 5 : 2
                    capStyle: ShapePath.FlatCap

                    startX: 0; startY: 0
                    PathLine {x: stateB.width; y: 0}
                }
            }
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            Layout.columnSpan: currentState == 1? 4 : 2
            topPadding: 10
            Text {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Position B"
                font.family: "Helvetica"
                font.pointSize: currentState == 1? 22 : 12
                color: "white"
            }
            Button {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Save"
                onClicked: {
                    popup.visible = true
                    popupTimer.start()
                    currentState = 1
                    stateB_cushion_hardness = hardnessState.myState
                    stateB_foot_angle = footSlider.outputValue
                    stateB_back_angle = backSlider.outputValue
                    stateB_head_offset = headrestSlider.outputValue
                }
            }
            Button {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }   
                text: "Load"
                onClicked: {
                    currentState = 1
                    hardnessStateAnimation.to = stateB_cushion_hardness
                    hardnessStateAnimation.start()
                    footSliderAnimation.to = stateB_foot_angle
                    footSliderAnimation.start()
                    backSliderAnimation.to = stateB_back_angle
                    backSliderAnimation.start()
                    headrestSliderAnimation.to = stateB_head_offset
                    headrestSliderAnimation.start()
                }
            }    
        }
        Column {
            id: "stateC"
            Shape {
                ShapePath {
                    fillColor: "black"
                    strokeColor: "gray"
                    strokeWidth: currentState == 2? 5 : 2
                    capStyle: ShapePath.FlatCap

                    startX: 0; startY: 0
                    PathLine {x: stateC.width; y: 0}
                }
            }
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 1
            topPadding: 10
            Layout.columnSpan: currentState == 2? 4 : 2
            Text {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Position C"
                font.family: "Helvetica"
                font.pointSize: currentState == 2? 22 : 12
                color: "white"
            }
            Button {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Save"
                onClicked: {
                    popup.visible = true
                    popupTimer.start()
                    currentState = 2
                    stateC_cushion_hardness = hardnessState.myState
                    stateC_foot_angle = footSlider.outputValue
                    stateC_back_angle = backSlider.outputValue
                    stateC_head_offset = headrestSlider.outputValue
                }
            }
            Button {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Load"
                onClicked: {
                    currentState = 2
                    hardnessStateAnimation.to = stateC_cushion_hardness
                    hardnessStateAnimation.start()
                    footSliderAnimation.to = stateC_foot_angle
                    footSliderAnimation.start()
                    backSliderAnimation.to = stateC_back_angle
                    backSliderAnimation.start()
                    headrestSliderAnimation.to = stateC_head_offset
                    headrestSliderAnimation.start()
                }
            }  
        }
    }   
}

