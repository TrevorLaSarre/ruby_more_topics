def each_cons(arr)
  0.upto(arr.size - 2) do |x|
    yield(arr[x], arr[x+1])
  end
  nil
end
