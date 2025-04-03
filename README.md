## Interview Question: Simple Image Generation and Display in Swift

In this exercise, you will implement a basic image generation system in Swift, focusing on representing and displaying a simple image without relying on external graphics libraries. The ultimate goal is to create an image, display it in the terminal, and then save it as a PPM file. We’ll do this step-by-step, using only standard Swift features.

### Part 1: Displaying the Image in the Terminal

Your first task is to generate a 64x48 pixel image with a circle of radius 5 pixels centered in the image. You will represent this image as a 2D grid and print it to the terminal, using '.' to represent "white" pixels (outside the circle) and 'x' to represent "black" pixels (inside the circle).

To determine whether a pixel (x, y) is inside the circle, it can be helpful to remember the equation for a circle: 
`x^2 + y^2 = r^2`, where `r` is the radius. For our image, we also need to consider that the center of the circle will be at (32, 24) given (0, 0) is the top-left corner.

Here’s a template to get you started:

```swift
typealias GreyscaleImage = // To define 

// Function to generate the image with a centered circle
func generateCircleImage(width: Int, height: Int, radius: Int) -> GreyscaleImage {
}

// Function to print the image to the terminal
func printImage(_ image: GreyscaleImage) {
    // NOTE: For pretty alignment depending on your terminal font, you may also want to include
    // a space after each characteer (e.g. x x x . . .)
}

// Example usage
let image = generateCircleImage(width: 64, height: 48, radius: 5)
printImage(image)
```

**Your Task:**
- Implement `generateCircleImage` to create the 64x48 image with a circle of radius 5 at the center.
- Implement `printImage` to display the image in the terminal using '.' and 'x'.
- Ensure the output visually resembles a circle when printed.

### Part 2: Outputting the Image as a PPM File

Next, you’ll modify your code to output the same 64x48 image as a PPM file in the P2 format, a text-based image format for greyscale images. 

The PPM P2 protocol (and later for color images, the P3) can be found at [this link](https://en.wikipedia.org/wiki/Netpbm).

For this task, keep it simple: map pixels inside the circle to black (0) and pixels outside to white (255). Output the PPM content to the terminal, and then redirect it to a file (e.g., `output.ppm`) to view it with an image viewer that supports PPM files (Preview.app on macOS).

Here’s a template for this part:

```swift
// Function to write the image as PPM P2 format to standard output
func writeP2(_ image: Image, width: Int, height: Int) {
    // NOTE: ASCII PPM formats are not sensitive to newlines. You can choose to output
    // as one long space-separated string, or break on each image row.)
}

// Example usage
let image = generateCircleImage(width: 64, height: 48, radius: 5)
writeP2(image, width: 64, height: 48)
```

**Your Task:**
- Implement `writePPM` to output the image in PPM P2 format.
- Run your program and redirect the output to a file.
- Open `output.ppm` in an image viewer to verify the circle appears correctly.

### Optional Challenge: Adding Color +/or Color Gradient

If you complete the above tasks and have extra time, enhance your image by adding a color and/or color gradient to the circle using the P3 format (refer back to the Wiki!). For example, you could print the circle red, or vary the RGB values based on the distance from the center, creating a smooth transition from one color at the center to another at the edge. You’ll need to use a new `ColorImage` representation (e.g., RGB triples instead of greyscale) and update both `generateCircleImage` and `writePPM` accordingly.

---

### Notes
- Do not use external libraries; implement everything using standard Swift.
- Test your terminal output (Part 1) to ensure the circle is recognizable.
- For Part 2, ensure the PPM file is correctly formatted and viewable. You can use tools like GIMP, Preview (macOS), or online PPM viewers.
- The focus is on understanding image representation, basic math (circle equation), and file format encoding.

This question assesses your ability to work with 2D data structures, perform simple calculations, and handle text-based output in Swift, all while building a foundation for more complex ray tracing concepts.

