# Prime Multiplication Tables

## `class Prime` [prime.rb](/prime.rb)
Class contains methods around prime numbers. Specifically, the `first(n)` method is pivotal to building the multiplication tables.
`Prime.first(n)` renders an array of the first n primes.
`Prime.isPrime?(n)` identifies whether any int `n` is a prime number.

## `class PrimeMultiplicationTable` [prime_multiplication_table.rb](/prime_multiplication_table.rb)
Consists of methods around constructing the prime multiplication tables. Validates size argument is an integer when instantiating.
`data` to construct 2D array for table.
`format` to render string of table for output to terminal.
`render_cell` pads a cell based on the length of the largest digit in the table.

#### Run app with start.rb:
Any integer is valid as an argument. Too big and the table wont fit on your monitor however! (Default is 10)

`ruby start.rb 10`

`ruby start.rb`

### Testing:
Rspec tests were created for both Prime and PrimeMultiplicationTable classes. Run either spec with the with the filenames below:

`rspec spec/prime_spec.rb`

`rspec spec/prime_multiplication_table_spec.rb`

Note: Test data is located in spec/test_data.rb
