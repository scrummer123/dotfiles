#!/usr/bin/python3

from os import listdir, chdir
from os.path import isdir, join

dirprefix = str("/usr/src/")
kerneldirs = listdir(dirprefix)
kerneldirpaths = [dirprefix + x for x in kerneldirs]
kernelversions = [0] * len(kerneldirs)
kernelversionlengths = [0] * len(kerneldirs)

for i, d in enumerate(kerneldirs):
    kernelversion_split = str(d).split("-")[1].split(".")

    strversion = ''.join([str(x) for x in kernelversion_split])
    kernelversionlengths[i] = int(len(strversion))
    kernelversions[i] = strversion

for i, ver in enumerate(kernelversions):
    oldverlen = kernelversionlengths[i - 1]
    newverlen = kernelversionlengths[i]
    diff = int(oldverlen) - int(newverlen)

    if kernelversionlengths[i - 1] > kernelversionlengths[i]:
        for num in range(0, diff):
            kernelversions[i] = str(int(kernelversions[i]) * 10)

    if kernelversionlengths[i - 1] < kernelversionlengths[i]:
        for num in range(0, diff):
            kernelversions[i] = str(int(kernelversions[i]) / 10)

largest = max(kernelversions)
most_recent_kernel_key = int([i for i, j in enumerate(kernelversions) if j == largest][0])
print(kerneldirpaths[most_recent_kernel_key])
