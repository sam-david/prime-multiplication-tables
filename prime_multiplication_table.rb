require_relative 'prime'

class PrimeMultiplicationTable
  def initialize(size = 10)
    validate(size)
    @size = size
    @data = data
  end

  # Construct data from array of first n primes
  def data
    primes = Prime.first(@size).unshift(1)
    primes.map do |num_y|
      primes.map do |num_x|
        num_y * num_x
      end
    end
  end

  # Turn each data row into string and pad cell by length of largest digit in table
  def format
    @data.each_with_object("") do |row, string|
      string << row.map do |num|
        render_cell(num, max_cell_length)
      end.join(" ").insert(-1, "\n")
    end
  end

  def max_cell_length
    @data[@size][@size].to_s.length
  end

  def print_to_screen
    puts format
  end

  def render_cell(num, length)
    num.to_s.rjust(length)
  end

  def validate(size)
    if !size.is_a? Integer
      raise 'Table size must be an integer'
    end
  end
end

