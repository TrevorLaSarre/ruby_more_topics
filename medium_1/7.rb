def bubble_sort!(arr)
  unswapped_pairs = (arr.size - 1)
  
  while unswapped_pairs >= 1 
    iterations += 1
    position_of_final_swap = nil

    1.upto(unswapped_pairs) do |x|
      unless (block_given? ? yield(arr[x-1], arr[x]) : (arr[x-1] <= arr[x]))
        arr[x - 1], arr[x] = arr[x], arr[x - 1]
        position_of_final_swap = x
      end
    end
    
    unswapped_pairs = position_of_final_swap.to_i
  end
end

#Alternative Solution:

def bubble_sort!(arr)
  (arr.size - 1).times do |x|
    arr.each_cons(2).with_index do |(a, b), idx|
      unless (block_given? ? yield(a, b) : (a <= b))
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      end
    end
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)
