/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 600, height: 400)

//random background
let number = random(from: 0, toButNotIncluding: 2)
if number == 0 {
    canvas.fillColor = Color.green
    canvas.drawRectangle(centreX: 300, centreY: 200, width: 700, height: 700)
}

if number == 1 {
    canvas.fillColor = Color.red
    canvas.drawRectangle(centreX: 300, centreY: 200, width: 700, height: 700)
}

//face
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 300, centreY: 200, width: 250, height: 250)
//eyes
canvas.fillColor = Color.blue
canvas.drawEllipse(centreX: 250, centreY: 250, width: 50, height: 50)
canvas.fillColor = Color.init(hue: 60, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: 250, centreY: 250, width: 20, height: 20)
canvas.fillColor = Color.blue
canvas.drawEllipse(centreX: 350, centreY: 250, width: 50, height: 50)
canvas.fillColor = Color.init(hue: 60, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: 350, centreY: 250, width: 20, height: 20)
//mouth
canvas.fillColor = Color.blue
canvas.drawEllipse(centreX: 300, centreY: 150, width: 100, height: 100)

//smile/frown
if number == 1{
    canvas.drawShapesWithBorders = false
    canvas.fillColor = Color.white
    canvas.drawRectangle(centreX: 300, centreY: 120, width: 100, height: 50)
}
if number == 0 {
    canvas.drawShapesWithBorders = false
    canvas.fillColor = Color.white
    canvas.drawRectangle(centreX: 300, centreY: 180, width: 100, height: 50)
}



//repeating rectangle
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 5
canvas.borderColor = Color.blue
for y in stride(from: 0, through: 400, by: 50) {
    canvas.drawRectangle(centreX: 100, centreY: 200, width: 100, height: y)
}

//2nd repeating rectangle
for y in stride(from: 0, through: 400, by: 50) {
    canvas.drawRectangle(centreX: 500, centreY: 200, width: 100, height: y)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
