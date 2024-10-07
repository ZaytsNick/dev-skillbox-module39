import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: "Task#1"

    Rectangle {
        id: scene
        anchors.fill: parent
        state: "InitialState"

        Rectangle {
            id: leftRectangle
            x: 100
            y: 200
            color: "lightgrey"
            width: 100
            height: 100
            border.color: "black"
            border.width: 3
            radius: 5

            Text {
                           id: moveT
                           anchors.centerIn: parent
                           text: "move"
                       }

            MouseArea{
                anchors.fill: parent
                onClicked:  {
                if(ball.x >= rightRectangle.x){
                    scene.state = "InitialState"
                    // scene.state
                }
                else{
                    ball.x += 30
                    scene.state = "OtherState"
                }
                }

            }
        }

        Rectangle {
            id: rightRectangle
            x: 300
            y: 200
            color: "yellow"
            width: 100
            height: 100
            border.color: "black"
            border.width: 3
            radius: 5

            Text {
                           id: returnT
                           anchors.centerIn: parent
                           text: "return"
                       }

            MouseArea{
                anchors.fill: parent
                onClicked:   scene.state = "InitialState"
            }
        }

        Rectangle{
            id: ball
            color: "darkgreen"
            x: leftRectangle.x+5
            y: leftRectangle.y+5
            width: leftRectangle.width-10
            height: leftRectangle.height-10
            radius: width / 2

        }

        states:[
            State{
                name: "InitialState"
                PropertyChanges {
                    target: ball
                    x: leftRectangle.x+5
                }
            },
            State {
                name: "OtherState"
                PropertyChanges {
                        target: ball
                        x: ball.x
                        }
            }
        ]
        transitions: [
            Transition {
                from: "OtherState"
                to: "InitialState"

                NumberAnimation {
                    properties: "x,y"
                    duration: 1000
                    easing.type: Easing.OutBounce
                }
            }
        ]
    }
}
