require 'rspec'
require './task_01'

RSpec.describe 'task_01' do
  it 'End of word with "CS"' do
    word = "abcs"
    word_check(word)
    expect(word_check(word)).to eq(2 ** 4)
  end
  it 'End of word without "CS"' do
    word = "abcde"
    word_check(word)
    expect(word_check(word)).to eq("edcba")
  end
end