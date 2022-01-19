def solution(a)

  new_array = Array(1..(a.size + 1))
  res = new_array - a
  res[0]

end

puts solution([2, 3, 1, 5]) == 4
puts solution([]) == 1
puts solution([1]) == 2
puts solution([1,3]) == 2
puts solution([2,3,4,5,6]) == 1
puts solution([1,2,3,4]) == 5
