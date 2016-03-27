class Prime
  def self.first(n)
    return -1 if n <= 1
    # return the first n prime numbers
    1.upto(Float::INFINITY).lazy.select do |num|
      isPrime?(num)
    end.first(n)
  end

  def self.isPrime?(n)
    return false if n <= 1

    (2..n - 1).each do |num|
      if n % num == 0
        return false
      end
    end

    return true
  end
end
