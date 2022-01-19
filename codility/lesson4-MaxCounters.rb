def solution(n, a)
  counters = [0] * n

  a.each do |value|
    index = value - 1
    if index >= n
      counters = [counters.max] * n
    else
      counters[index] += 1
    end
  end
  counters
end

print solution(5, [3, 4, 4, 6, 1, 4, 4]) # [3, 2, 2, 4, 2]
