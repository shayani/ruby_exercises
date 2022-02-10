# https://app.codility.com/programmers/lessons/7-stacks_and_queues/fish/
#
# https://app.codility.com/demo/results/training8VFHVE-G9M/
# 100%
#
def solution(a, b)

  downstream = []
  eaten_fishes = 0

  (0..b.size-1).each do |fish|
    if b[fish] == 1 # downstream
      downstream.push(a[fish])
    else # upstream
      while downstream.any?
        if downstream.last > a[fish]
          eaten_fishes += 1
          break
        elsif downstream.last < a[fish]
          downstream.pop
          eaten_fishes += 1
        end
      end
    end
  end

  a.size - eaten_fishes
end

puts solution([4, 3, 2, 1, 5], [0, 1, 0, 0, 0]) # 2
