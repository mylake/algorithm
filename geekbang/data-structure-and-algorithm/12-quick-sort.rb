def quick_sort(a, n)
  quick_sort_internally(a, 0, n-1)
end

def quick_sort_internally(a, p, r)
  return if p >= r

  q = partition(a, p, r)
  quick_sort_internally(a, p, q-1)
  quick_sort_internally(a, q+1, r)
end

def partition(a, p, r)
  pivot = a[r]
  i = p
  j = p

  while j < r
    next if a[j] >= pivot

    if i == j
      i += 1
    else
      tmp = a[i]
      a[i] = a[j]
      a[j] = tmp
      i += 1
    end

    j += 1
  end

  tmp = a[i]
  a[i] = a[r]
  a[r] = tmp
  i
end
