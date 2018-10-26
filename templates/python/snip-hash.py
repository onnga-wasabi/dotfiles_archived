import imagehash
from PIL import Image


def cv2pil(img):
    return Image.fromarray(img)


def pil2cv(img):
    return np.asarray(img)


def get_hash(images):
    imgs = []
    append = imgs.append
    for img in images:
        img = imagehash.phash(cv2pil(img), hash_size=16).hash.flatten()
        img = np.array([int(h) for h in img])
        append(img)
    return imgs
