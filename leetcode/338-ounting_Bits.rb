# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
    result = [0]
    i = 1
    while i <= num
        new_i = result[i / 2]
        if i % 2 == 0
            result << new_i
        else
            result << (new_i + 1)
        end
        i += 1
    end
    result
end

# 把每個數字一個一個寫出來
# 找出規律
