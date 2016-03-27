describe 'Prime class' do
  it 'verify int is a prime number' do
    expect(Prime.isPrime?(2)).to be(true)
    expect(Prime.isPrime?(4)).to be(false)
    expect(Prime.isPrime?(13)).to be(true)
    expect(Prime.isPrime?(29)).to be(true)
  end

  it 'returns first n prime numbers' do
    expect(Prime.first(2)).to eq([2, 3])
    expect(Prime.first(5)).to eq([2, 3, 5, 7, 11])
    expect(Prime.first(10)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    expect(Prime.first(20)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71])
  end
end
