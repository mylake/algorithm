# @param {String} s
# @return {Integer}
def first_uniq_char(s)

    hash = {}
    black_list = []

    s.chars.each_with_index do |digit, index|
        next if black_list.include?(digit)

        if hash[digit].nil?
          hash[digit] = index
        else
          hash.delete(digit)
          black_list << digit
        end
    end

    hash.each do |value, index|
        return index
    end

    -1
end
