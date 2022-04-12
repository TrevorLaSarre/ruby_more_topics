def each_with_index(arr)
  0.upto(arr.size - 1) { |x| yield(arr[x], x) }
  arr
end
