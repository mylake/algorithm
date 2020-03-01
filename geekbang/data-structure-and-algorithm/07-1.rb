def find(a, n, key)
  return -1 if a.nil? || n <= 0

  i = 0;

  while i < n
    return i if (a[i] == key)
    i += 1
  end

  -1
end




def find_2(a, n, key)
  return -1 if a.nil? || n <= 0

  tmp = a[n - 1]
  a[n - 1] = key
  i = 0

  while a[i] != key
    i += 1
  end

  a[n-1] = tmp

  return -1 if i == n - 1

  i
end
