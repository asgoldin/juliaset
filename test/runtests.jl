using juliaset
using Base.Test

# non-divergence check;
@test juliaset.createjuliaset(ones(1),zeros(1),10,100,0) == 11*ones(1,1)
