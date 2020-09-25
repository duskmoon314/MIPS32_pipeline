import struct

l = [1, 3, 2, 4, 5, 7, 6, 8, 9, 10, 11, 12, 13, 14, 15, 255]

with open("a.in", "wb") as target:
    for i in l:
        for j in range(8):
            target.write(struct.pack("I", i))