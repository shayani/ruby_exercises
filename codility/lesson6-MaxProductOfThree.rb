def solution(a)

  sorted = a.sort

  p1 = sorted[-3] * sorted[-2] * sorted[-1]
  p2 = sorted[0] * sorted[1] * sorted[-1]

  if p1 >= p2
    p1
  else
    p2
  end

end

puts solution([1, 2, 3, 4, 5, 6]) # 120
puts solution([-3, 1, 2, -2, 5, 6]) # 60
