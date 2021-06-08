import QtQuick 2.12
import QtQuick.Window 2.12

Window
{
    id: wind
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Column {

            anchors
            {
                top:parent.top
                topMargin: wind.height/1.6
                left : parent.left
                leftMargin : wind.width/32
            }

            Button
            {
                id:button1
                width:widthNormal
                height:buttHeight
                label : "Play"

            }
            Button
            {
                id:button2
                width:widthNormal
                height:buttHeight
                label : "Settings"
            }
            Button
            {
                id:button3
                width:widthNormal
                height:buttHeight
                label : "Quit"
            }


        }

}








