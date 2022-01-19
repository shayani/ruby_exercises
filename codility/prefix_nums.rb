def prefix_nums(a)
  print "#{a}\n"
  n = a.size
  p = [0] * (n + 1)
  (1..n).each do |k|
    p[k] = p[k - 1] + a[k - 1]
  end

  p
end

# print prefix_nums([1, 2, 3, 4, 5])
print prefix_nums(Array.new(10) { rand(1..1_000) })
