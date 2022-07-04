require 'rspec'
require './foobar'

RSpec.describe 'Main file testing' do
  it 'If x = 20' do
    x = 20
    y = 5
    foobar(x, y)

    expect(foobar(x, y)).to eq(y)
  end

  it 'If y = 20' do
    x = 6
    y = 20
    foobar(x, y)

    expect(foobar(x, y)).to eq(x)
  end
  it 'If x != 20 and y != 20' do
    x = 80
    y = -6
    foobar(x, y)

    expect(foobar(x, y)).to eq(74)
  end
end
