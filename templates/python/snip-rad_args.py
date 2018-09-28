import argparse


def parse():
    parser = argparse.ArgumentParser()
    parser.add_argument('-k', '--kinds', nargs='+', default=['ADNI2-2'])
    parser.add_argument('-c', '--classes', nargs='+')
    parser.add_argument('-a', '--arch')
    parser.add_argument('-i', '--id')
    parser.add_argument('-g', '--gpu', type=int, default=-1)
    parser.add_argument('-b', '--batch', type=int, default=2)
    return parser.parse_args()
