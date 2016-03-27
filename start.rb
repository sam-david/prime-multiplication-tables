require_relative 'prime_multiplication_table'

user_input = ARGV[0]

if user_input.nil?
  input_num = 10
else
  if user_input !~ /^\d+$/
    raise 'Please provide integer argument when running ex: ruby start.rb 10'
  else
    input_num = user_input.to_i
  end
end

prime_table = PrimeMultiplicationTable.new(input_num)
prime_table.print_to_screen
