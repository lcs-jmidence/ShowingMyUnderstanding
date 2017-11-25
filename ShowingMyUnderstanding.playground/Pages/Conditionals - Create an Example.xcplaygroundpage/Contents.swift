/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a conditional statement to respond to random number generation.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)


canvas.drawRectangle(centreX: 200, centreY: 200, width: 500, height: 500)

//face
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 200, centreY: 200, width: 300, height: 300)

//eyes
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 150, centreY: 250, width: 50, height: 50)
canvas.drawEllipse(centreX: 250, centreY: 250, width: 50, height: 50)

let number = random(from: 0, toButNotIncluding: 2)

//mouths
if number == 0 {
    canvas.drawRectangle(centreX: 200, centreY: 100, width: 100, height: 200)
}

if number == 1 {
    canvas.drawEllipse(centreX: 200, centreY: 100, width: 100, height: 100)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
