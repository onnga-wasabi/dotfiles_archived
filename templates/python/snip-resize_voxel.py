import numpy as np
import cv2


def resize_voxel(voxel, size):
    org_depth = voxel.shape[0]
    depth, height, width = size

    new_voxel = np.zeros((depth, height, width))
    tmp_voxel = np.zeros((org_depth, height, width))

    for idx in range(org_depth):
        aslice = voxel[idx, :, :]
        new_aslice = cv2.resize(aslice, (width, height), interpolation=cv2.INTER_CUBIC)
        tmp_voxel[idx, :, :] = new_aslice

    for idx in range(height):
        aslice = tmp_voxel[:, idx, :]
        new_aslice = cv2.resize(aslice, (width, depth), interpolation=cv2.INTER_CUBIC)
        new_voxel[:, idx, :] = new_aslice

    return new_voxel
