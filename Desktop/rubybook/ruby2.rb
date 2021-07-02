wallet = 500
puts wallet >=300

puts 2.even?
# evenは偶数メソッド



#case の使い方
order = "モカ"

case order
  when "カフェラテ"
    puts "300円です"
  when "モカ"
    puts "350円です"
  else
    puts "取り扱っていません"
end


# timesメソッド

3.times do
  puts "カフェラテ"
end

3.times {
  puts "カフェラテ"
}

biscuit = 0
while biscuit < 2
  biscuit = biscuit + 1
  puts "ポケットを叩くと#{biscuit}つ"
end

a = 2
puts 365 < 2

puts 1 + 1 == a

season = "夏"

if season ==  "夏"
   puts "かき氷食べたい","アイス食べたい"
else
   puts "あんまん食べたい"
end

wallet = 100

if wallet > 120
  p  "ジュースを買う"
else
  p "お金じゃ買えない幸せが"
end

x = 200

if x <= 0 || x >= 100
  p  "範囲外です"
else
  p "お金じゃ買えない幸せが"
end

season = "春"

case season == "春"
when "夏"
 p "かき氷"
when "春"
 p "大福"
else
 p "味噌汁"
end

2.times do
puts "カフェラテ"
 2.times{puts "モカ"}
end
puts "カプチーノ"
