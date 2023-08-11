import numpy as np

tvec = np.linspace(0, 0.9999, 1000)
gvec = np.zeros(1000)

z = 1
a = 0.33
b = 2.15

t = 0.5
N = ( a*(1-t) ) / ( b*(a*(1-t) + (1-a)) )
w = z*a*N**(a-1)
G = w*t*N
Gtarget = G

i = -1
for t in tvec:
    i = i + 1
    N = ( a*(1-t) ) / ( b*(a*(1-t) + (1-a)) )
    w = z*a*N**(a-1)
    G = w*t*N
    gvec[i] = G
    if abs(Gtarget - G) < 0.0001:
        print(f't = {t}, G = {G}, \
                Gtarget - G = {Gtarget - G}')


maxG = np.max(gvec)
maxtax = tvec[np.argmax(gvec)]
print(f'maximum G is {maxG} at tax rate {maxtax}')

