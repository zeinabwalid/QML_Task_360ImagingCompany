import QtQuick 2.0
Item
{
    id: root
    property color colorNormal : "red"
    property color colorClicked : "green"
    property int   widthClicked: 30
    property int   widthHover: 25
    property int   widthNormal: 10
    property string label : ""
    property int   buttHeight: txt.height
    signal clicked()
    Rectangle
    {
        id: container
        width:root.widthNormal + txt.implicitWidth
        height:buttHeight + txt.implicitHeight

        Rectangle
        {
            id: button
            width : root.widthNormal
            height: buttHeight
            color:  root.colorNormal

        }

        Text
        {
            id: txt
            anchors
            {
                 verticalCenter: button.verticalCenter
                 left : button.right
                 leftMargin : 10
            }

            font.pixelSize: 16
            text: root.label

        }

        MouseArea
        {
            id: area
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                         button.width = root.widthHover
                         button.color = root.colorNormal
                       }

            onExited: {
                      button.width  = root.widthNormal
                      button.color = root.colorNormal
            }
            onPressed:{
                       button.color = root.colorClicked
                       button.width = root.widthClicked
                       root.clicked()
            }
            onReleased: {
                button.width = root.widthHover
                button.color = root.colorNormal
            }

        }
    }

}

