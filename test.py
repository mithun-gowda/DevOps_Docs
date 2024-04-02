import cv2

def convert_to_cartoon(image):
    # Convert the image to grayscale
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # Apply a median blur to reduce noise
    gray = cv2.medianBlur(gray, 5)

    # Apply adaptive thresholding to get a binary image
    edges = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_MEAN_C, cv2.THRESH_BINARY, 9, 9)

    # Apply bilateral filter to smooth the image
    color = cv2.bilateralFilter(image, 9, 250, 250)

    # Combine the color image with the edges
    cartoon = cv2.bitwise_and(color, color, mask=edges)

    return cartoon

# Read the input image
image = cv2.imread('input_image.jpg')

# Convert the image to cartoon
cartoon_image = convert_to_cartoon(image)

# Display the original and cartoon images
cv2.imshow('Original Image', image)
cv2.imshow('Cartoon Image', cartoon_image)
cv2.waitKey(0)
cv2.destroyAllWindows()

