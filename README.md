# Prime Multiplication Tables

## `class Prime`
[Link to file](/prime.rb)

Class contains methods around prime numbers. Specifically, the `first(n)` method is pivotal to building the multiplication tables.

`Prime.first(n)` renders an array of the first n primes.

`Prime.isPrime?(n)` identifies whether any int `n` is a prime number.

## `class PrimeMultiplicationTable`
[Link to file](/prime_multiplication_table.rb)

Consists of methods around constructing a prime multiplication table. Validates size argument is an integer when instantiating.

`data` to construct 2D array for table.

`format` to render string of table to output to terminal.

`render_cell` pads a cell based on the length of the largest digit in the table.


### Run app with start.rb:
Any integer is valid as an argument. (Default is 10)

`ruby start.rb 10`

`ruby start.rb`

### Complexity:
Running this script with input `10` takes approximently .25 milliseconds on average. Running with an input of `100` takes approximently 18 milliseconds.
The methods within prime.rb have a running time of O(n) whereas the methods in prime_multiplication_table.rb run in O(n^2)). This is due to `data` method that has a nested loop through the input arrays.
This app does scale but an input too large and the table will not fit on your monitor!

### Testing:
Rspec tests were created for both Prime and PrimeMultiplicationTable classes. Run either spec with the with the filenames below:

`rspec spec/prime_spec.rb`

`rspec spec/prime_multiplication_table_spec.rb`

Note: Test data is located in spec/test_data.rb
