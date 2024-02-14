import QtQuick

Rectangle {
    id: "seats"
    color: "black"
    property real cushionHardness: 0
    property int footAngle: 90
    property int backAngle: 0
    property int headOffset: 0
    Rectangle {
        color: "black"
        anchors.centerIn: parent
        anchors.fill: parent
        transform: Scale {
            xScale: 0.7
            yScale: 0.7
            origin.x: seats.width/2
            origin.y: seats.height/2
        }
        Image {
            id: "backRest"
            source: "./Assets/BackRest.png"
            anchors {
                right: stand.right
                bottom: baseRest.bottom
            }
            transformOrigin: Item.Bottom
            rotation: backAngle

            Image {
                id: "cushion"
                source: "./Assets/Cushion.png"
                z: -1
                anchors {
                    horizontalCenter: backRest.horizontalCenter
                    horizontalCenterOffset: -35
                    verticalCenter: backRest.verticalCenter
                    verticalCenterOffset: -20
                }
                transform: Scale {
                    origin.x: cushion.width / 2
                    xScale: cushionHardness
                }
            }

            Image {
                id: "head"
                source: "./Assets/HeadRest.png"
                anchors {
                    bottom: backRest.top
                    horizontalCenter: backRest.horizontalCenter
                }

                transform: Translate {
                    y: headOffset
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

        Image {
            id: "footRest"
            source: "./Assets/HeadRest.png"
            anchors {
                top: baseRest.bottom
                horizontalCenter: baseRest.left
            }

            transform: Rotation {
                origin.x: footRest.width/2
                angle: footAngle
            }
        }
        Image {
            id: "stand"
            source: "./Assets/Stand.png"
            anchors {
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
                horizontalCenterOffset: -35

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
                verticalCenter: stand.top
                horizontalCenter: stand.right
            }
        }
    }
}