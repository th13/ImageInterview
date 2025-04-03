// Type alias for the image as a 2D array of booleans
typealias GreyscaleImage = [[UInt8]]

// Function to generate the image with a centered circle
func generateCircleImage(width: Int, height: Int, radius: Int) -> GreyscaleImage {
    // Initialize a 2D array of size height x width.
    // Calculate the center coordinates (centerX, centerY)
    // For each pixel (x, y), update the value if the pixel is in the circle. 
    // (Note: It may be helpful to use 0 for black and 255 for white to be useful
    // later when we implement a real image.)
    // Return the completed image
    return [[0]]
}

// Function to print the image to the terminal
func printImage(_ image: GreyscaleImage) {
    // Iterate over each row and column of the image
    // Print 'x' for black, inside the circle and '.' for white, outside the circle.
    // For pretty alignment depending on your terminal font, you may also want to include
    // a space after each characteer (x x x . . .).
}

// Example usage
let image = generateCircleImage(width: 64, height: 48, radius: 5)
printImage(image)
