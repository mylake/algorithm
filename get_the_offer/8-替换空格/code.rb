# @param {String} s
# @return {String}
def replace_space(s)
    return s if s.empty?
    space = 0
    s.split('').each { |digit| space += 1 if digit == ' '}

    old_length = s.size
    new_length = old_length + (space * 2)
    old_point = old_length - 1
    new_point = new_length - 1

    new_s = Array.new(new_length)

    while old_point >= 0
        if s[old_point] != ' '
            new_s[new_point] = s[old_point]
            new_point -= 1
        else
            new_s[new_point] = '0'
            new_point -= 1
            new_s[new_point] = '2'
            new_point -= 1
            new_s[new_point] = '%'
            new_point -= 1
        end
        old_point -= 1
    end
    new_s.join('')
end
