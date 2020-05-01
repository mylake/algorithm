def count_sort(a, n)
  return if n <= 1

  max = a[0]

  i = 1
  while i < n
    if max < a[i]
      max = a[i]
    end
    i += 1
  end

  c = Array.new(max + 1)

  i = 0
  while i <= max
    c[i] = 0
    i += 1
  end

  i = 0
  while i < n
    c[a[i]] += 1
    i += 1
  end

  i = 1
  while i <= max
    c[i] = c[i-1] + c[i]
    i += 1
  end

  r = Array.new(n)

  i = n - 1
  while i >= 0
    index = c[a[i]] - 1
    r[index] = a[i]
    c[a[i]] -= 1
    i -= 1
  end

  i = 0
  while i < n
    a[i] = r[i]
    i += 1
  end
end
