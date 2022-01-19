RSpec.describe 'all test' do
  it 'test all zeroes' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    expect(all_zeros).to eq(true)
  end

  it 'not all zeroes' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = words.all?("gone")
    expect(all_gone).to eq(true)
  end

  it 'not all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = words.all?("gone")
    expect(all_gone).to eq(false)
  end

  it 'all empty' do
    strings = ["", "", "", "", "", "", ""]
    all_empty = strings.all?(&:empty?)
    expect(all_empty).to eq(true)
  end

  it 'not all empty' do
    strings = ["", "", "", "full", "", "", ""]
    all_empty = strings.all?(&:empty?)
    expect(all_empty).to eq(false)
  end

  it 'not all uppercase' do
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_uppercase = words.all? { |w| w == w.upcase }
    expect(all_uppercase).to eq(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    # Your code goes here
    expect(all_lies).to eq(true)
  end

  xit 'multiples of 7' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    # Your code goes here
    expect(all_multiples_of_7).to eq(true)
  end

  xit 'not all three digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    # Your code goes here
    expect(all_3_digits).to eq(false)
  end

  xit 'all four letter words' do
    words = ["love", "hate", "fire", "bird", "call"]
    # Your code goes here
    expect(all_4_letters).to eq(true)
  end
end
