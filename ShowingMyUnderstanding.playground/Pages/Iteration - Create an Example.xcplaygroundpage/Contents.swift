/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a iteration (loops) to create an image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)
canvas.drawShapesWithFill = true
canvas.borderColor = Color.red
canvas.fillColor = Color.black
canvas.drawRectangle(centreX: 250, centreY: 250, width: 600, height: 600)

//canvas.drawAxes()
canvas.translate(byX: 250, byY: 250)
canvas.defaultBorderWidth = 6

//rotate canvas
canvas.rotate(by: -45)
canvas.borderColor = Color.blue
canvas.drawShapesWithFill = true
canvas.fillColor = Color.init(hue: 180, saturation: 100, brightness: 100, alpha: 100)
// draw diamonds
for x in stride(from: Int(0), through: 350, by: 50) {
    canvas.drawRectangle(centreX: 0, centreY: 0, width: x, height: x)
}

canvas.drawShapesWithFill = false
for diamond in stride(from: 0, through: 350, by: 50) {
    canvas.drawRectangle(centreX: 0, centreY: 0, width: diamond, height: diamond)
}





/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
