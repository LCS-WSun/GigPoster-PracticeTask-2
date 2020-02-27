//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)


// Begin your solution here...

canvas.fillColor = yellow

//draw a yellow rectangle that is the background

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


//Draw a parralelogram



var vertices : [Point] = [] // empty array
vertices.append(Point(x: 20, y: 50))
vertices.append(Point(x: 160, y: 50))
vertices.append(Point(x: 220, y: 150))
vertices.append(Point(x: 60, y: 150))
canvas.drawCustomShape(with: vertices)

//The logic and how to go about it




//THE SHAPES
//I see that there is 12 parallelograms
//Each shape is translated so you can shift it somehow

//Or.... I would create the shapes on the positions individually (not a stride function)

// I think (x: 15, and y is





// Drawing the SUBHUMANS text
canvas.drawText(message: "subhumans", at: Point(x: 20, y: 345), size: 50, kerning: 0.0)

//Drawing each line out using a stride function


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

