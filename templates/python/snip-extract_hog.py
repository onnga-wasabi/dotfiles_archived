def extract_hog(images):
    hog = cv2.HOGDescriptor()
    return [hog.compute(img).flatten() for img in images]
