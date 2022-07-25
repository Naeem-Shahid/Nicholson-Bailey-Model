# Without dispersion
maxt = 50
h = zeros(maxt)
p = zeros(maxt)
times = zeros(maxt)
h[1] = 1
p[1] = 1
times[1] = 0

a, c, R = 1, 1, 2
for t in 1:maxt - 1
    times[t+1] = t
    h[t + 1] = R * h[t] * exp.(-a * p[t])
    p[t + 1] = c * h[t] * (1 .- exp.(-a * p[t]))
end
##################################################

# With dispersion
using ImageFiltering
function FH(h, p)
    a, c, R = 1, 1, 2
    rh, rp = 0.1, 0.1
    
    ker = [1.0 1.0 1.0; 1.0 0.0 1.0; 1.0 1.0 1.0]

    nbh = rh * imfilter(h, ker)  / 8
    nbp = rp * imfilter(p, ker)  / 8
    
    hx = (1 - rh) * h + nbh
    px = (1 - rp) * p + nbp

    h = R * hx .* exp.(-a * px)
    p = c * hx .* (1 .- exp.(-a * px))
    
    h, p
end