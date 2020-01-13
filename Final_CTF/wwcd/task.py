#!/bin/env python3 -u
import os


state = int.from_bytes(os.urandom(8), 'little')
print('state ', state)
poly = 0xaa0d3a677e1be0bf
def step():
    global state
    out = state & 1
    state >>= 1
    if out:
        state ^= poly
    return out


def random():
    for _ in range(42):
        step()
    return step()


money = 1.1
while money > 0:
    y = random()
    print('y is ', y)
    x = int(input('> '))
    if x == y:
        money += 0.02
    else:
        money -= 0.042
    print(money)
    if money > 1.79:
        print("Here's your fried chicken:")
        with open('../flag.txt') as f:
            print(f.read())
        exit(0)
print('E( G_G)')
