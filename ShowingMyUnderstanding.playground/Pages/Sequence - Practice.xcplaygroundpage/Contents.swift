/*:
 [Previous](@previous) / [Next](@next)

 # Sequence - Practice
 
 When does sequence matter?

 Here is an example of an image that is created and depends on statements being run in a certain order:

 ![overlapping_shapes](overlapping-shapes.png "Overlapping Shapes Logo")

 In this shape, there are lines and ellipses used.

 [Color](http://russellgordon.ca/lcs/HSB_Color_Model_Summary_Swift.pdf) and alpha (transparency) matter.

 Try reproducing this image for practice.
 
 NOTE: Colors and image must match precisely.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note

 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

// create background
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 400)
// no borders
canvas.drawShapesWithBorders = false

// green circle
canvas.drawShapesWithFill = true
canvas.fillColor = Color.init(hue: 120, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: 100, centreY: 250, width: 100, height: 100)
// yellow circle
canvas.fillColor = Color.init(hue: 60, saturation: 80, brightness: 90, alpha: 100)
canvas.drawEllipse(centreX: 160, centreY: 250, width: 100, height: 100)
// Green transp
canvas.fillColor = Color.init(hue: 120, saturation: 100, brightness: 100, alpha: 30)
canvas.drawEllipse(centreX: 120, centreY: 250, width: 85, height: 85)
// Red circle
canvas.fillColor = Color.init(hue: 10, saturation: 100, brightness: 100, alpha: 80)
canvas.drawEllipse(centreX: 220, centreY: 250, width: 100, height: 100)
// Blue Circle
canvas.fillColor = Color.init(hue: 220, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(centreX: 280, centreY: 250, width: 100, height: 100)
// blue transp
canvas.fillColor = Color.init(hue: 220, saturation: 100, brightness: 100, alpha: 60)
canvas.drawEllipse(centreX: 250, centreY: 250, width: 85, height: 85)







// Add your code below... remember to use comments to indicate your intent
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
