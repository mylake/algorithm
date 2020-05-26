# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(a)
    i = 0
    j = a.size - 1

    while i < j
        while (i < j && a[i].even?)
            i += 1
        end

        while (i < j && a[j].odd?)
            j -= 1
        end

        if (i < j)
            tmp = a[i]
            a[i] = a[j]
            a[j] = tmp
        end
    end
    a
end
