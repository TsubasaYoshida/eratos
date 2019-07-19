class Eratos
  def self.prime_numbers(arg)
    upper_limit = arg.to_i

    remaining = []
    (2..upper_limit).each do |num|
      remaining << num
    end

    prime_numbers = []
    while remaining[0] < Math.sqrt(upper_limit)
      prime_numbers << remaining[0]
      remaining = delete_multiple(remaining, remaining[0])
    end

    remaining.each do |rem_num|
      prime_numbers << rem_num
    end

    ret = ''
    prime_numbers.each do |num|
      ret << "#{num}, "
    end

    ret.chop.chop
  end

  private

  def self.delete_multiple(numbers, coef)
    delete_numbers = []
    numbers.each do |num|
      if num % coef == 0
        delete_numbers << num
      end
    end

    numbers.delete_if do |num|
      delete_numbers.include?(num)
    end

    numbers
  end

end

puts Eratos.prime_numbers(ARGV[0])
