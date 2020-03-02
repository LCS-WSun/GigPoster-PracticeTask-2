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
canvas.fillColor = purple
canvas.drawShapesWithBorders = false

canvas.drawShapesWithFill = true


for verticalPosition in stride(from: 50, through: 225, by: 175) {
    
for horizontalPosition in stride(from: -140, through: 20 + 3 * 160, by: 160) {
    
    //from -140 seems right to me
    
    
    // spacing between used to be 162 but I think is 161 or 160
    
    
        //Might be 20? not 25
    
    
        var vertices : [Point] = [] // empty array
        vertices.append(Point(x: horizontalPosition, y: verticalPosition))     // 1 might be 20
        vertices.append(Point(x: horizontalPosition + 50, y: verticalPosition + 100))   // 2 (it might not be 75? maybe 70
        vertices.append(Point(x: horizontalPosition + 200, y: verticalPosition + 100))  // 3 (maybe not 225?) 220
        vertices.append(Point(x: horizontalPosition + 150, y: verticalPosition))   // 4 ( not 175) maybe 170
        canvas.drawCustomShape(with: vertices)
        
    }
    
}

//Making the new stride function for the top row
canvas.fillColor = lightRed

//The red row of parralelograms

for verticalPosition in stride(from: 137, through: 140, by: 175) {
    
for horizontalPosition in stride(from: -140, through: 20 + 3 * 160, by: 160) {
        
        var vertices : [Point] = [] // empty array
        vertices.append(Point(x: horizontalPosition, y: verticalPosition))     // 1
        vertices.append(Point(x: horizontalPosition + 50, y: verticalPosition + 100))   // 2
       vertices.append(Point(x: horizontalPosition + 200, y: verticalPosition + 100))  // 3
        vertices.append(Point(x: horizontalPosition + 150, y: verticalPosition))   // 4
        canvas.drawCustomShape(with: vertices)
        
    }
    
}








//The logic and how to go about it


//THE SHAPES
//I see that there is 12 parallelograms
//Each shape is translated so you can shift it somehow

//Or.... I would create the shapes on the positions individually (not a stride function)

// I think (x: 15, and y is


//Then once you know the first shape (estimated, you would then with each individual point add blah blah to get the right point and the 4 points make the parralelgoram

//Old logic




//New problem
// I am unsure if the spacing between each in correct so I need to tweak and also the positions of the parallegrams of the purple might be wrong
//I am not sure how but maybe the size of them is slightly off 






// Drawing the SUBHUMANS text
canvas.drawText(message: "subhumans", at: Point(x: 20, y: 345), size: 50, kerning: 0.0)


//Drawing each line out using a stride function



//Draw horizontal lines in grid

for x in stride(from: 0, through: 400, by: 50) {
    
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
    
}


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

