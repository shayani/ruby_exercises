def solution(a)
  min_avg_value = (a[0] + a[1]) / 2.0 # The mininal average
  min_avg_pos = 0 # The begin position of the first

  # slice with mininal average
  (0..(a.size - 3)).each do |index|

    if (a[index] + a[index + 1]) / 2.0 < min_avg_value
      min_avg_value = (a[index] + a[index + 1]) / 2.0
      min_avg_pos = index
    end

    if (a[index] + a[index + 1] + a[index + 2]) / 3.0 < min_avg_value
      min_avg_value = (a[index] + a[index + 1] + a[index + 2]) / 3.0
      min_avg_pos = index
    end
  end

  if (a[-1] + a[-2]) / 2.0 < min_avg_value
    min_avg_value = (a[-1] + a[-2]) / 2.0
    min_avg_pos = len(a) - 2
  end

  min_avg_pos
end

puts solution([4,2,2,5,1,5,8])
