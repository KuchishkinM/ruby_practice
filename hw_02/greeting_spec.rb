require 'rspec'
require './greeting'

RSpec.describe 'Greeting' do
  it '# age test < 18:' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Alex', 'Smith', 8)

    expect(greeting).to eq('Привет, Alex Smith. Тебе меньше 18 лет, но начать учиться программировать никогда не рано.')
  end

  it '# age test >= 18:' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Alex', 'Smith', 25)

    expect(greeting).to eq('Привет, Alex Smith. Самое время заняться делом!')
  end
end
