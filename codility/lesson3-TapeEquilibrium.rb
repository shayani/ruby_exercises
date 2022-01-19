def solution(a)

  left = 0
  right = a.reduce(:+)
  diff = []

  for i in 1..(a.size-1) do
    left += a[i-1]
    right -= a[i-1]
    diff << (left - right).abs
  end
  diff.min
end

puts solution([3, 1, 2, 4, 3]) # 1
