def to_gray(images):
    return [cv2.cvtColor(img, cv2.COLOR_BGR2GRAY) for img in images]
