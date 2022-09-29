# parameters
a = 0.33
b = 2.15
z = 1
t = 0.5

# implicit functions
labor(a, b, t) = (a*(1-t)) / (b*(a*(1-t) + (1-a)))
wage(a, z, N) = a*z*N^(a-z)
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
    t = tvec[indt]
    N = labor(a, b, t)
    w = wage(a, z, N)
    G = gov(w, t, N)
    Gvec[indt] = G
    if (abs(G - Gtarget) < 0.0001)
        println("At tax = $t, Gval = $G")
    end
end

Gmax = maximum(Gvec)
Gmaxidx = argmax(Gvec)
Tmax = tvec[Gmaxidx]


lnum = 100
Gnum = 100
znum = 100
zgrid = collect( range( 0.8, 1.2, length = znum ) )
lgrid = collect( range( 0.01, 0.99, length = lnum ) )

a = 1/2; b = 2; d = 3/2;
GovFOC(z, l) = z*(1-l)^(1-a) - # line continuation!
    ( (l^(-d)) / ( (1-a)*z*(1-l)^(-a) ) )^(-1/b)
# upper & lower bound of Ggrid
Gbound = Array{Float64, 2}(undef, lnum, znum)
for indz = 1:1:znum
    zval = zgrid[indz]
    for indl in 1:1:lnum
        lval = lgrid[indl]
        Gval = GovFOC(zval, lval)
        cval = zval*(1.0 - lval)^(1-a) - Gval
        if cval < 0.0
            Gbound[indl, indz] = -Inf
        elseif Gval < 0.0
            Gbound[indl, indz] = 0.0
        else
            Gbound[indl, indz] = Gval
        end
    end
end

Ghigh = maximum(Gbound)
# need to find for every z and l, the highest G that can ensure c is positive
Ggrid = collect( range( 0.0, Ghigh, length = Gnum ) )

    a = 1/2; b = 2; d = 3/2;
    # define implicit utility function
    utility(l, z, G) = ( ( z*(1-l)^(1-a) - G )^(1-b) ) /
                        ( 1-b ) +
                        ( l^(1-d) ) / (1-d)
    # Array for storage
    ## for temporary storage
    uvec = Array{Float64, 1}(undef, lnum)
    ## for optimal utility value
    ustar = Array{Float64, 2}(undef, znum, Gnum)
    ## for optimal leisure given z, G
    lstar = Array{Float64, 2}(undef, znum, Gnum)

    for indG = 1:1:Gnum
        Gval = Ggrid[indG]
        for indz = 1:1:znum
            zval = zgrid[indz]
            for indl = 1:1:lnum
                lval = lgrid[indl]
                cval = zval*(1-lval)^(1-a) - Gval
                uval = utility(lval, zval, Gval)
                if cval < 0.0
                    uvec[indl] = -Inf
                # elseif uval < -30.0
                #     uvec[indl] = -Inf
                else
                    uvec[indl] = uval
                end
            end
            ustar[indz, indG] = maximum(uvec)
            lstar[indz, indG] = lgrid[argmax(uvec)]
        end
    end









for indz = 1:1:znum
    zval = zgrid[indz]
    for indl in 1:1:lnum
        lval = lgrid[indl]
        cval = zval*(1.0 - lval)^(1-a) - 0.08
        if cval < 0.0
            println("$indz, $indl")
        else
            continue
        end
    end
end



for indz in 1:1:znum
    zval = zgrid[indz]
    for indl in 1:1:lnum
        lval = lgrid[indl]
    end
end


# lower bound should higher than 0.01
Glow = max(0.0, minimum(Gbound))

