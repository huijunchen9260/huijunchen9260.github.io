import numpy as np
tvec = np.linspace(0, 0.9999, 100)

z = 1
a = 0.33
b = 2.15

t = 0.5
N = ( a*(1-t) ) / ( b*(a*(1-t) + (1-a)) )
w = z*a*N**(a-1)
G = w*t*N
Gtarget = G

for t in tvec:
    N = ( a*(1-t) ) / ( b*(a*(1-t) + (1-a)) )
    w = z*a*N**(a-1)
    G = w*t*N
    if abs(Gtarget - G) < 0.001:
        print(f't = {t}, G = {G}, Gtarget - G = {Gtarget - G}')
