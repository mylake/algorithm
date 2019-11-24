# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  if n < 0
    x = 1/x
    n = -n
  end

  result = 1

  while n != 0
    if n % 2 != 0
      result = result * x
    end
    x = x * x
    n = n/2
  end

  result
end
