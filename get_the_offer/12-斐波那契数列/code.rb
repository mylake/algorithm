# @param {Integer} n
# @return {Integer}
def fib(n)
    return n if n <= 1
    a = 0
    b = 1

    i = 2
    while i <= n
        sum = b + a
        a = b
        b = sum
        i += 1
    end
    b
end
