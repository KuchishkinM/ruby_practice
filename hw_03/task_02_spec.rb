require 'rspec'
require './task_02'

RSpec.describe 'task_02' do
  it 'One pocemon' do
    count_of_pokemons = 1
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Alex', 'Black')
    expect(add_pokemons(count_of_pokemons)).to eq([{ :name => "Alex", :color => "Black" }])
  end

  it 'Many pocemon' do
    count_of_pokemons = 3
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Alex', 'Black', 'Peny', 'Yellow', 'Mad', 'Red')
    expect(add_pokemons(count_of_pokemons)).to eq([{ :name => "Alex", :color => "Black" },
                                                   { :name => "Peny", :color => "Yellow" },
                                                   { :name => "Mad", :color => "Red" }])
  end
end
