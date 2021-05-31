n = 1

while n <= 30 do
  if n % 3 == 0 && n % 5 == 0
    puts "FizzBuzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  else
    puts "#{n}"
  end
  n += 1
end


# def fizz_buzz(n)
#   ret = "#{["Fizz"][n % 3]}#{["Buzz"][n % 5]}"
#   ret.empty? ? n.to_s : ret
# end

# puts (1..100).collect{|n| fizz_buzz n }