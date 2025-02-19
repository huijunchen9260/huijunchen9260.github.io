# parameters
a = 0.33
b = 2.15
z = 1
t = 0.5

# implicit functions
labor(a, b, t) = (a*(1-t)) / (b*(a*(1-t) + (1-a)))
wage(a, z, N) = a*z*N^(a-1)
gov(w, t, N) = w*t*N

## find the G level at tax = 0.5
N = labor(a, b, t)
w = wage(a, z, N)
G = gov(w, t, N)
Gtarget = G

## iterate all possible tax value and calculate corresponding G value
tnum = 1000
tvec = collect( range(0.0001, 0.999, tnum) )
Gvec = Array{Float64, 1}(undef, tnum)

for indt = 1:1:tnum
    local t, N, w, G
    t = tvec[indt]
    N = labor(a, b, t)
    w = wage(a, z, N)
    G = gov(w, t, N)
    Gvec[indt] = G
    if (abs(G - Gtarget) < 0.0001)
        println("Potential answer for Q42: At tax = $t, G = $G, Target - G = $(G - Gtarget)")
    end
end

Gmax = maximum(Gvec)
Gmaxidx = argmax(Gvec)
Tmax = tvec[Gmaxidx]

println("Q43: maximum G is achieved at tax rate $Tmax")
println("Q44: maximum G is $Gmax")
