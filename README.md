# Prime Multiplication Tables

### Prime:
Class created for functions around prime numbers. Use `Prime.first(n)` to render an array of the first n primes. Use `Prime.isPrime?(n)` method to identify whether any int `n` is a prime number.

### PrimeMultiplicationTable:
Model contains logic around constructing the prime multiplication tables. Contains `data` method to construct 2D array for table. `format` method to render string for output to terminal. `render_cell` pads the cell based on the length of the largest digit in the table. Validates size argument is an integer.

#### Run app with start.rb:
Any integer is valid as an argument. Too big and the table wont fit on your monitor however! (Default is 10)

`ruby start.rb 10`

`ruby start.rb`

### Testing:
Rspec tests were created for both Prime and PrimeMultiplicationTable classes. Run either spec with the with the filenames below:

`rspec spec/prime_spec.rb`

`rspec spec/prime_multiplication_table_spec.rb`

Note: Test data is located in spec/test_data.rb
