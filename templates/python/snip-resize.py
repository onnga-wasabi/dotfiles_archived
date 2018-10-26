def resize(images, size):
    return [cv2.resize(img, size) for img in images]
