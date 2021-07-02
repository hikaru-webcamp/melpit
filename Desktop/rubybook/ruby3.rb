drinks = ["cofe"]
puts drinks.first
p ["cofe","moca"].first

#### 要素の追加#####

# ＃配列の末尾にカフェラテを追加
drinks.push("カフェラテ")
p drinks
# ＃配列の先頭にカレーを追加
drinks.unshift("カレー")
p drinks

drinks.<< "カフェラテ"
p drinks

foods = ["うどん", "ラーメン", "かつどん"]
#末尾から１つ削除
foods.pop
p foods
# 配列の先頭から１つ削除
foods.shift
p foods


# 2つの配列をあわせる

a1 = [1, 2, 3]
a2 = [4, 5]
p a1 + a2

# 2つの配列をひく
# 引き算を使うと配列aにだけある要素を得ることができる

a1 = [1, 2, 3]
a2 = [2, 3]
p a1 - a2

# 繰り返しを途中で終わらせる break
[1,2,3].each do |x|
  break if x == 2
  puts x
end
[1,2,3].each do |x|
  puts x
end

# 繰り返しの次の回へ進む next
[1,2,3].each do |x|
  next if x == 2
  puts x
end

# 範囲を指定して繰り返す Rangeオブジェクト
(3..5).each do |x|
  puts x
end
