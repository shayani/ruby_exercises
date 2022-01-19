# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"
def solution(p, s)
  # write your code in Ruby 2.2

  cars = p.length
  total_people = p.inject(:+)
  total_seats = s.inject(:+)

  free_seats = total_seats - total_people
  puts "Free seats: #{free_seats}"

  avail_people = p.sort
  puts "Avail_people: #{avail_people}"

  while free_seats > 0 do
    puts "--- Avail_people[0]: #{avail_people[0]}"
    if avail_people[0] > 0
      free_seats = free_seats - 1
      avail_people[0] = avail_people[0] - 1
      puts "New free: #{free_seats}"
      puts "New P: #{avail_people}"

      if avail_people[0] == 0
        puts "Dropping avail_people[0]"
        avail_people = avail_people.drop(1)
        cars = cars - 1
      end
      puts "Cars: #{cars}"
    else
      avail_people = avail_people.drop(1)
    end
    # cars = cars - 1
  end

  puts "Final total cars: #{cars}"
  cars
end

puts solution([1,4,2], [2,4,4])
