import Felgo 3.0
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

App {

    id: iWindow
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    width: 600
    height: 350
    menuBarFelgoEnabled : false

    flags: Qt.Window | Qt.CustomizeWindowHint


    Rectangle {
        width: parent.width
        height: 40
        color: "#212121"

        MouseArea{
            id: iMouseArea
            property int prevX: 0
            property int prevY: 0
            width: parent.width
            height: parent.height
            onPressed: {prevX=mouse.x; prevY=mouse.y}
            onPositionChanged:{
                var deltaX = mouse.x - prevX;
                iWindow.x += deltaX;
                prevX = mouse.x - deltaX;

                var deltaY = mouse.y - prevY
                iWindow.y += deltaY;
                prevY = mouse.y - deltaY;
            }
        }
    }

}
