require 'pry'
require_relative 'prime'

class PrimeMultiplicationTable
  def initialize(size = 10)
    validate(size)
    @size = size
    @data = data
  end

  def print_to_screen
    puts format
  end

  def format
    # pad each row cell by length of largest digit
    max_cell_length = data[@size][@size].to_s.length
    final_string = ""
    @data.each do |row|
      current_row = row.map do |num|
        render_cell(num, max_cell_length)
      end.join(" ")
      final_string += current_row
      final_string += "\n"
    end
    final_string
  end

  def render_cell(num, length)
    num.to_s.rjust(length)
  end

  def data
    primes = Prime.first(@size).unshift(1)
    primes.map do |num_x|
      primes.map do |num_y|
        num_x * num_y
      end
    end
  end

  def validate(size)
    if !size.is_a? Integer
      raise 'Table size must be an integer'
    end
  end
end

