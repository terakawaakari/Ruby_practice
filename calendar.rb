require "date"

def calendar
  
  firstday = Date.new(2021, 5, 1)
  lastday = Date.new(2021, 5, -1)

  first_wday = firstday.wday
  lastday_date = lastday.day

  #1~lastday_dateまでの日付をブロック変数nに格納
  # →日付の数字を文字列に変換して1桁の場合は左に1マス空白を追加
  days = (1..lastday_date).map{ |n|
    n.to_s.rjust(2)
  }

  days = Array.new(first_wday, '  ').push(days).flatten.each_slice(7).to_a

  puts firstday.strftime("%B %Y").center(20)
  puts %w[Su Mo Tu We Th Fr Sa].join(' ')

  days.each do |week|
    puts week.join(' ')
  end
end

calendar
