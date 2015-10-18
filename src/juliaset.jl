module juliaset

function createjuliaset{T,V,U}(x::Array{V,1}, y::Array{U,1}, n_iter::Int, escape_tol::Real, R::T)

if T==Function
  G = R;
elseif T<:Number
  function G(z)
    z^2 + R;
  end
else
  error("invalid function R")
end

if V<:Real
else
  error("invalid type in array x")
end

if U<:Real
else
  error("invalid type in array Y")
end

A = zeros(length(x), length(y))


for i in 1:length(x)
  for j in 1:length(y)
    z = x[i] + im * y[j]
    for k in 1:n_iter
      z = G(z)
      if abs(z) > escape_tol # diverged
        A[i,j] = k

        break
      end
    end
    if A[i,j] == 0 # didn't diverge
      A[i,j] = n_iter + 1

    end
  end
end

return A;
matshow(log(A))

end

export createjuliaset
end
