# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print "Fizz" instead of the number
# and for the multiples of five print "Buzz".
# For numbers which are multiples of both three and five print "FizzBuzz".

# 1
# def fizzbuzz(number)
#   i = 1
#   until i > number
#     if i % 3 == 0 && i % 5 == 0
#       puts "FizzBuzz for #{i}"
#     elsif i % 3 == 0
#       puts "Fizz for #{i}"
#     elsif i % 5 == 0
#       puts "Buzz for #{i}"
#     else
#       puts i
#     end
#     i += 1
#   end
# end
#
# fizzbuzz(100)

def fizzbuzz(number)
  (1..number).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz for #{i}"
    elsif i % 3 == 0
      puts "Fizz for #{i}"
    elsif i % 5 == 0
      puts "Buzz for #{i}"
    else
      puts i
    end
  end
end

fizzbuzz(100)


# 2
# (1..100).each do |i|
#   if i % 3 == 0 && i % 5 == 0
#     puts "FizzBuzz for #{i}"
#   elsif i % 3 == 0
# 		puts "Fizz for #{i}"
# 	elsif i % 5 == 0
# 		puts "Buzz for #{i}"
#   else
#   	puts i
# 	end
# end
#
# # 3
# (1..100).each { |i| puts i % 3 == 0 ? (i % 5 == 0 ? "FizzBuzz" : "Fizz") : (i % 5 == 0 ? "Buzz" : i) }
#
# # 4
# puts((1..100).map do |i|
#   if i % 3 == 0 && i % 5 == 0
#     "FizzBuzz for #{i}"
#   elsif i % 3 == 0
# 		"Fizz for #{i}"
# 	elsif i % 5 == 0
# 		"Buzz for #{i}"
# 	else
#     i
#   end
# end.join("\n")
# )
