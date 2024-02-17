import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Shapes

Rectangle {
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
            fromValue: 0; toValue: 12
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
        ThreeButtonRow{
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: Layout.columnSpan
            Layout.preferredHeight: Layout.rowSpan
            Layout.rowSpan: 2
            Layout.columnSpan: 1
            id: "hardnessState"
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
                text: "State A"
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
                    hardnessState.myState = stateA_cushion_hardness
                    footSlider.outputValue = stateA_foot_angle 
                    backSlider.outputValue = stateA_back_angle 
                    headrestSlider.outputValue = stateA_head_offset
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
                text: "State B"
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
                    hardnessState.myState = stateB_cushion_hardness
                    footSlider.outputValue = stateB_foot_angle 
                    backSlider.outputValue = stateB_back_angle 
                    headrestSlider.outputValue = stateB_head_offset
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
                text: "State C"
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
                    hardnessState.myState = stateC_cushion_hardness
                    footSlider.outputValue = stateC_foot_angle 
                    backSlider.outputValue = stateC_back_angle 
                    headrestSlider.outputValue = stateC_head_offset
                }
            }   
        }
    }   
}

