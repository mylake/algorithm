# 2. 動態程式規劃
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return n if n <= 1

    dp = []
    dp[1] = 1
    dp[2] = 2

    s = 3

    while s <= n
        dp[s] = dp[s-1] + dp[s-2]
        s += 1
    end

    dp[n]
end


# 3. 可以對空間進一步優化，用 a, b 來儲存值，先 a + b = b, 然後把 b 的值給原來的 a, => a = new_b - b => b - a
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    a = 1
    b = 1

    while n > 0
        b = a + b
        a = b - a
        n -= 1
    end

    a
end


# 4. 遞迴，但用一個array來儲存過去計算的數值，就不會重覆計算
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    memo = []
    helper(n, memo)
end

def helper(n, memo)
    return 1 if n <= 1
    return memo[n] if memo[n].to_i > 0

    memo[n] = helper(n - 1, memo) + helper(n - 2, memo)
end
