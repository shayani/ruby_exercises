# Idea from https://www.youtube.com/watch?v=CZHukXHrFu4
#
# https://app.codility.com/demo/results/trainingVES4V7-E3E/
# 100%
def leader(arr)
  leader = -1
  sorted_array = arr.sort
  candidate = sorted_array[(arr.size) / 2]

  count_of_candidate = arr.select { |n| n == candidate }.count

  if count_of_candidate > (arr.size / 2)
    leader = candidate
  end

  leader
end

def solution(a)
  leader = leader(a)
  # print "#{a} - Leader: #{leader}\n"
  # puts "-" * 30
  occurences = []
  count_of_occurences = 0
  equileaders = 0
  array_size = a.size

  a.each_with_index do |value, index|
    count_of_occurences += 1 if value == leader

    occurences.push(count_of_occurences)
  end
  max_leader_count = occurences.last
  # print "Occurences of leader at index: #{occurences}\n"
  occurences.each_with_index do |qtd_of_leaders_at_index, index|
    next if index == array_size - 1 # skip last one

    # puts "-" * 30
    # puts "INDEX #{index}"
    size_of_left_array = index + 1
    size_of_right_array = array_size - size_of_left_array
    # puts "Tamanho LEFT: #{size_of_left_array} -- RIGHT: #{size_of_right_array}"
    # puts "Leaers  LEFT: #{qtd_of_leaders_at_index} -- RIGHT: #{max_leader_count - qtd_of_leaders_at_index}"

    if qtd_of_leaders_at_index > (size_of_left_array / 2) &&
      (max_leader_count - qtd_of_leaders_at_index) > (size_of_right_array / 2)
      # puts "EQUILEADER FOUND!"
      equileaders += 1
    end
  end
  equileaders
end


p solution([4, 3, 4, 4, 4, 2]) # 2
p solution([4, 4, 2, 5, 3, 4, 4, 4]) # 3
p solution([1, 2, 3, 4, 5]) # 0
