# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
    result = []
    i = 0
    pushed.each do |push|
        result << push

        while result.any? && popped[i] == result[-1]
            result.pop
            i += 1
        end
    end

    result.empty?
end
