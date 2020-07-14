# @param {String} str
# @return {Integer}
def my_atoi(str)
    return 0 if str.empty?
    sign = 1
    base = 0
    i = 0
    n = str.length
    max = 2 ** 31 - 1
    min = -2 ** 31

    while ( i < n && str[i] == ' ')
        i += 1
    end

    if (i < n && (str[i] == '+' || str[i] == '-'))
        sign = (str[i] == '+') ? 1 : -1
        i += 1
    end

    while (i < n && str[i] >= '0' && str[i] <= '9')
        base = 10 * base + str[i].to_i
        i += 1
    end

    result = base * sign

    return max if result > max
    return min if result < min

    result
end
