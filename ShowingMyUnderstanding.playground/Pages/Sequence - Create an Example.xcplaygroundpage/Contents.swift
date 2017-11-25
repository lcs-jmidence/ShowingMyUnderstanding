/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.

 ## Remember
 
 Commit your work as you make progress on this page.

 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)
//background
canvas.fillColor = Color.red
canvas.drawRectangle(centreX: 200, centreY: 200, width: 500, height: 500)
//no fill
canvas.drawShapesWithFill = false

//repeating rectangle
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 5
canvas.borderColor = Color.green
for y in stride(from: 0, through: 400, by: 50) {
    canvas.drawRectangle(centreX: 100, centreY: 200, width: 100, height: y)
}

//2nd repeating rectangle
for y in stride(from: 0, through: 400, by: 50) {
    canvas.drawRectangle(centreX: 300, centreY: 200, width: 100, height: y)
}
//circle design
canvas.borderColor = Color.yellow
for x in stride(from: 0, through: 400, by: 50) {
    for y in stride(from: 0, through: 400, by: 50) {
        canvas.drawEllipse(centreX: 0, centreY: 0, width: x, height: y)
    }
}

//2nd circle design
canvas.borderColor = Color.blue
for x in stride(from: 400, through: 0, by: -50) {
    for y in stride(from: 400, through: 0, by: -50) {
        canvas.drawEllipse(centreX: 400, centreY: 400, width: x, height: y)
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
