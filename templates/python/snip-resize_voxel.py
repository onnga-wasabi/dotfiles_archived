import numpy as np
import cv2


def resize_voxel(voxel, size):
    org_shape = voxel.shape
    if isinstance(size, int):
        width, height = size, size
    elif isinstance(size, tuple):
        width, height = size[0], size[1]

    new_voxel = np.zeros((width, height, width))
    tmp_voxel = []
    for idx in range(org_shape[0]):
        aslice = voxel[idx, :, :]
        new_aslice = cv2.resize(aslice, (width, height), interpolation=cv2.INTER_CUBIC)
        tmp_voxel.append(new_aslice)
    tmp_voxel = np.array(tmp_voxel)

    for idx in range(tmp_voxel.shape[1]):
        aslice = tmp_voxel[:, idx, :]
        new_aslice = cv2.resize(aslice, (width, width), interpolation=cv2.INTER_CUBIC)
        new_voxel[:, idx, :] = new_aslice

    return new_voxel
