require 'fibonacci'

describe Fibonacci do
  before(:all) do
    @fb = Fibonacci.new(4e6)
  end

it 'should generate fibonacci sequence whose values do not exceed four million' do
  expect(@fb.gen_seq).to be <= 4e6
end
it 'should generate array of all even number of the sequence' do
    expect(@fb.even_arr).to all (be_even)
end
it 'sum of even fibonacci seq for whose values is less than 4 million is 4613732' do
    expect(@fb.sum).to be 4613732
end

end
