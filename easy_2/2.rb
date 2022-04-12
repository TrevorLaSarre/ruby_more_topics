def zip(arr1, arr2)
  arr1.each_with_object([]).with_index do |(x, result), idx|
    result << [x, arr2[idx]]
  end
end
  
p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]