import QtQuick
import QtQuick.Shapes

Rectangle {
    id: "seats"
    color: "black"
    property real cushion_hardness: 0
    property int foot_angle: 90
    property int back_angle: 0
    property int head_offset: 0
    property int stroke_width: 5
    Shape {
        anchors {
            bottom: baseRest.top
            right: backRest.right
        }
        transformOrigin: Item.BottomRight
        ShapePath {      
            fillColor: "black"
            strokeColor: "gray"
            strokeWidth: 0.5
            capStyle: ShapePath.FlatCap
            PathAngleArc {
                
                centerX: 0 ; centerY: 0
                radiusX: parent.width/4; radiusY: parent.width/4
                startAngle: -170
                sweepAngle: back_angle + 60
            }
        }
    }
    Shape {
        id: "backArcDes"
        anchors {
            left: parent.left
            right: backRest.left
            top: parent.top
            bottom: baseRest.top
        }
        Text {
            text: "Back Rest"
            font.family: "Helvetica"
            font.pointSize: 18
            color: "white"
            x: 0; y: backArcDes.height/2 - height - stroke_width
        }
        Text {
            text: back_angle + 90 + "\xB0"
            font.family: "Helvetica"
            font.pointSize: 24
            color: "white"
            x: 0; y: backArcDes.height/2 + (2*stroke_width)
        }
        ShapePath {
            fillColor: "black"
            strokeColor: "gray"
            strokeWidth: stroke_width
            capStyle: ShapePath.FlatCap

            startX: 0; startY: backArcDes.height/2
            PathLine {x: backArcDes.width/2; y: backArcDes.height/2}
            PathLine {x: backArcDes.width/1.8; y: backArcDes.height/1.8}
        }
    }
    Image {
        id: "backRest"
        source: "./Assets/BackRest.png"
        anchors {
            right: stand.right
            bottom: baseRest.bottom
        }
        transformOrigin: Item.Bottom
        rotation: back_angle
        Image {
            id: "cushion"
            source: "./Assets/Cushion.png"
            z: -1
            anchors {
                horizontalCenter: backRest.horizontalCenter
                horizontalCenterOffset: -20
                verticalCenter: backRest.verticalCenter
                verticalCenterOffset: -10
            }
            opacity: cushion_hardness
        }

        Image {
            id: "head"
            source: "./Assets/HeadRest.png"
            anchors {
                bottom: backRest.top
                horizontalCenter: backRest.horizontalCenter
            }

            transform: Translate {
                y: head_offset
            }
        }
    }

    Image {
        id: "baseRest"
        source: "./Assets/BaseRest.png"
        anchors {
            verticalCenter: stand.top
            right: stand.right
        }
    }
    Shape { 
        id: "footArc"
        anchors {
            bottom: parent.bottom
            left: parent.left
            right: stand.left
            top: baseRest.bottom
        }
        ShapePath {
            
            fillColor: "black"
            strokeColor: "gray"
            strokeWidth: 0.5
            capStyle: ShapePath.FlatCap
            PathAngleArc {
                
                centerX: footArc.width/3; centerY: 0
                radiusX: footArc.width/4; radiusY: footArc.width/4
                startAngle: 10
                sweepAngle: foot_angle + 55
            }
        }
    }
    Shape {
        id: "footArcDes"
        anchors {
            bottom: parent.bottom
            left: parent.left
            right: stand.left
            top: baseRest.bottom
        }
        Text {
            text: "Foot Rest"
            font.family: "Helvetica"
            font.pointSize: 18
            color: "white"
            x: 0; y: footArcDes.height/1.5 + (2*stroke_width)
        }
        Text {
            text: foot_angle + 90 + "\xB0"
            font.family: "Helvetica"
            font.pointSize: 24
            color: "white"
            x: 0; y: footArcDes.height/1.5 - height - stroke_width
            
        }
        ShapePath {
            fillColor: "black"
            strokeColor: "gray"
            strokeWidth: stroke_width
            capStyle: ShapePath.FlatCap

            startX: 0; startY: footArcDes.height/1.5
            PathLine {x: footArcDes.width/2; y: footArcDes.height/1.5}
            PathLine {x: footArcDes.width/1.6; y: footArcDes.height/4}
        }
    }
    Image {
        id: "footRest"
        source: "./Assets/HeadRest.png"
        anchors {
            top: baseRest.bottom
            horizontalCenter: baseRest.left
        }

        transform: Rotation {
            origin.x: footRest.width/2
            angle: foot_angle
        }
    }
    Image {
        id: "stand"
        source: "./Assets/Stand.png"
        anchors {
            top: circle.verticalCenter
            right: circle.horizontalCenter
        }
    }
    Image {
        id: "handel"
        source: "./Assets/Hand.png"
        anchors {
            right: stand.right
            bottom: circle.top
            bottomMargin: -5
        }
    }

    Image {
        id: "circle"
        source: "./Assets/Circle.png"
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
            verticalCenterOffset: 35
        }
    }

}