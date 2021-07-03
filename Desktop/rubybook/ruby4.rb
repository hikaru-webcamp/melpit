#配列の要素数を得る sizeメソッド

puts [2,4,6].size

#配列の合計数
puts [1,2,3].sum


#平均
a=  [2,4,6]
puts a.sum/  a.size


#少数の計算 to_f
a=  [2,4,6]
puts a.sum.to_f/  a.size

#ランダムにするsampleメソッド
puts [1, 2, 3].sample
#ランダムに並び変えるshuffleメソッド
p [1, 2, 3].shuffle
#小さいに順に並び替える
p [1, 2, 3].sort
p ["hitomi", "as", "aaa"].sort
#小さい順にした配列をさらにreverseで逆順にする
p ["hitomi", "as", "aaa"].sort.reverse

#joinメソッド 文字列同士の間をつなげる
order = ""
["カフェラテ","チーズケーキ"].each do |item|
  order = order + item + "と"
end
puts order
# これだと と が多くなる

#joinメソッド
puts ["カフェラテ","チーズケーキ"].join("と")

#文字列を分割して配列にする
p "カフェラテ チーズケーキ バニラアイス".split

p "カフェラテとチーズケーキとバニラアイス".split("と")


#配列の各要素を変換した配列を作る map
result = [1,2,3].map do |x|
  x * 2
end
p result

result = ["abc","123"].map do |x|
  x.reverse
end
p result
