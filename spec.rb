require 'rspec/autorun'

class Grid
  def initialize
  end

  def setup(row, column, insert)
    Array.new(row, insert) {Array.new(column, insert)}
  end
end

describe 'Grid' do
  let(:a) {'.'}
  it 'is 2x2' do
    expect(Grid.new.setup(2,2, '.')).to eq([[a,a], [a,a]])
  end

  it 'is 3x4' do
    expect(Grid.new.setup(3,4, '.')).to eq([[a,a,a,a],[a,a,a,a],[a,a,a,a]])
  end
end