#ハッシュについて

# シンボル変換はは to_symメソッド
p "coffee". to_sym
p "coffee". to_s

#変数にハッシュを代入
menu = {:coffee => 300, :caffe_latte => 400}
p menu
#ハッシュから値を出力
menu = {:coffee => 300, :caffe_latte => 400}
p menu[:coffee]

#ハッシュの中に配列を書くこともできる
{title: "Ruby Book", members: ["yahoo","beco"]}

#こういう書き方もできる
menu = {coffee: 300, caffe_latte: 400}
p menu
#項目追加
menu = {coffee: 300, caffe_latte: 400}
menu [:mocha] = 400
p menu

#存在しないキーを指定したときは nilがかえってくる
menu = {coffee: 300, caffe_latte: 400}
p menu [:tea]
#default メソッドで指定したら0が得られる
menu = {coffee: 300, caffe_latte: 400}
menu.default = 0
p menu [:tea]

# 3つのハッシュを１つにまとめる .merge
coffee_menu = {coffee: 300, caffe_latte: 400}
tea_menu = {tea: 300, tea_latte: 400}
food_menu = {cake: 300}
menu = coffee_menu.merge(tea_menu, food_menu)
p menu
# ハッシュからキーと値の組を削除する
coffee_menu = {coffee: 300, caffe_latte: 400}
tea_menu = {tea: 300, tea_latte: 400}
food_menu = {cake: 300}
menu = coffee_menu.merge(tea_menu, food_menu)
menu.delete(:caffe_latte)
p menu
#ハッシュを繰り返し処理をする
menu ={coffee: 300, caffe_latte: 400}
menu.each do |key,value|
    puts "#{key} は #{value}円です"
end

#キーだけ繰り返し処理したいときには each_key
menu = {coffee: 300, caffe_latte: 400}
menu.each_key do |key|
    puts key
end

def area
  puts 2 * 2
end

area

def area(x)
  x * x
end

puts area(2)
