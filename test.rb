require "date"

firstday = Date.new(2021, 5, 1)
lastday = Date.new(2021, 5, -1)

first_wday = firstday.wday
lastday_date = lastday.day

days = (1..lastday_date).map{ |n|
    n.to_s.rjust(2)
  }

days = Array.new(first_wday, '  ').push(days).flatten.each_slice(7).to_a

days.each do |week|
    puts week.join(' ')
end

