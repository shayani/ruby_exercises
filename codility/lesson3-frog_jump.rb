def solution(x, y, d)

  distance = (y-x)
  if distance % d > 0
    (distance / d) + 1
  else
    (distance / d)
  end

end


# puts solution(10, 85, 30)
puts solution(100000,110_000_000,823)
