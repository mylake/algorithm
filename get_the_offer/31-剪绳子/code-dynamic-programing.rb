# @param {Integer} n
# @return {Integer}
def integer_break(n)
    dp = Array.new(n+1, 1)
    i = 3

    while i <= n
        j = 1
        while j < i
            dp[i] = [dp[i], [dp[i-j] * j, j * (i - j)].max].max
            j += 1
        end
        i += 1
    end

    dp[n]
end
