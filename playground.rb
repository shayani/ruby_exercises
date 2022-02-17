def slide_zeros(arr)
  # Solution 1
  # arr.each_with_index do |el, index|
  #   if el.zero?
  #     arr.delete_at(index)
  #     arr << 0
  #   end
  # end

  # Solution 2
  zero_counts = arr.count(0)
  arr.delete(0)
  zero_counts.times do
    arr.push(0)
  end
end

array = [1, 0, 2, 0, 3]
slide_zeros(array)
print array

