# https://app.codility.com/programmers/lessons/8-leader/dominator/
#
# https://app.codility.com/demo/results/trainingTKTFXY-T78/
# 100%

def solution(a)
  position = -1
  sorted_array = a.sort
  candidate = sorted_array[a.size / 2]

  count_of_candidade = a.select { |n| n == candidate }.count

  if count_of_candidade > (a.size / 2)
    position = a.index(candidate)
  end

  position
end

puts solution([3,4,3,2,3,-1,3,3]) # 0 or 2 or 4 or 6 or 7
