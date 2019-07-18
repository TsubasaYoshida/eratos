class Eratos
  def self.prime_numbers(arg)
    upper_limit = arg.to_i

    prime_numbers = []

    (2..upper_limit).each do |n|
      prime_numbers << n
    end

    prime_numbers
  end

  private

  def delete_multiple

  end

end

puts Eratos.prime_numbers(ARGV[0])
