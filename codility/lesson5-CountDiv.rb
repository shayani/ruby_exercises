# It is prefix-sum @ZeeshanShabbir, B is the upper bound, and A is the lower bound. first, you count all the divisor available from 1 to upper bound by B/K then you count all the divisor available from 1 to lower bound by A/K Then you use B/K - A/K, you will get all the divisor from A to B But wait, what if A divisible by K, then you will count it 2 times (from A and from B) then you need to check it to make sure it is only counted once. –
# https://stackoverflow.com/questions/34509250/count-div-from-codility-stackoverflowerror-in-program-using-recursion

def solution(a, b, k)
  b / k - a / k + (a % k == 0 ? 1 : 0)
end

a = rand(0..1_000_000_000)
b = rand(a..1_000_000_000)
puts solution(a, b, 5)

# require 'minitest/autorun'
# class Test < MiniTest::Test
#   def test_example_1
#     assert_equal 3, solution(6,11,2)
#   end
# end
