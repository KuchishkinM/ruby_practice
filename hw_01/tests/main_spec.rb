require 'rspec'
require './test_01'

RSpec.describe 'Main file testing' do
  it 'multiplies numbers' do
    left = 2
    right = 5
    multiple(left, right)

    expect(multiple(left, right)).to eq(10)
  end

  it 'failers' do
    left = 6
    right = 5
    multiple(left, right)

    expect(multiple(left, right)).to eq(10)
  end
end
