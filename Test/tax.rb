def interest(amount)
    case amount
    when 1..10000
        20
    when 10000..20000
        30
    when 20000..50000
        40
    when 50000..100000
        50
    end
end

def tax(balance)
  (interest(balance) * balance)/100
end

p tax(20000)
def fizzbuzz(number)
  i = 1
  until i > number
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz for #{i}"
    elsif i % 3 == 0
      puts "Fizz for #{i}"
    elsif i % 5 == 0
      puts "Buzz for #{i}"
    else
      puts i
    end
    i += 1
  end
end
