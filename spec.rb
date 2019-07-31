require 'rspec/autorun'

class Grid

  attr_reader :row, :column, :insert
  def initialize(row, column, insert)
    @row = row
    @column = column
    @insert = insert
  end

  def setup
    Array.new(row) {Array.new(column, insert)}
  end

  def access(row_coord, column_coord)
    board = setup
    board[row_coord][column_coord]
  end

  def value(row_coord, column_coord, value)
    board=setup
    board[row_coord][column_coord] = value
  end
end

describe 'Grid' do
  it 'is 2x2' do
    expect(Grid.new(2,2, ".").setup)
        .to eq([[".","."], [".","."]])
  end

  it 'is 3x4' do
    expect(Grid.new(3,4, '.').setup)
        .to eq([['.','.','.','.'],['.','.','.','.'],['.','.','.','.']])
  end

  it 'permits access to cell 0,0' do
    expect(Grid.new(2,2, ".").access(0,0)).to eq(".")
  end

  it 'permits access to cell 1,1' do
    expect(Grid.new(2,2, "X").access(1,1)).to eq("X")
  end

  it 'allows cell value to change to "X"' do
    expect(Grid.new(4,4, ".").value(3,4,"X")).to eq("X")
  end

  it 'allows cell value to change to "O"' do
    expect(Grid.new(5,7, ".").value(4,4,"O")).to eq("O")
  end

  it 'tells us which cells have "X" values' do

  end

  it 'changes all values of a certain tyoe' do

  end
end