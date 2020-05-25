# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
    if n < 0
        x = 1/x
        n = -n
    end

    res = 1

    while n != 0
        if n % 2 != 0
            res = res * x
        end
        x = x * x
        n = n/2
    end

    res
end
