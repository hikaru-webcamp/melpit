def thanks_and_receipt
  puts "ありがとうございます"
  puts "こちら、レシートになります"
end

thanks_and_receipt

# メソッドを途中で終わらせる return
def thanks_and_receipt
  puts "ありがとうございます"
  return
  puts "こちら、レシートになります"
end

thanks_and_receipt

# メソッドを途中で終わらせる return 引数に trueとfalseを与えて分岐
def thanks_and_receipt(receipt)
  greeting = "ありがとうございました"
  unless receipt
    return greeting
  end
  greeting + "こちらレシートになります"
end

puts thanks_and_receipt(true)
puts thanks_and_receipt(false)

def order(item)
  "#{item}をください"
end

puts order("カフェラテ")
puts order("モカ")

#引数を省略したときのデフォルト値 最初からいれとく

def  order(item = "コーヒー")
  "#{item}をください"
end

puts order #引数の省略
puts order("カフェラテ")
puts order("モカ")

#キーワード引数にして引数の順番を固定させる。
#これにより、引数の順番を間違えてもOK
def order(item:, size:)
  "#{item}を#{size}サイズでください"
end

puts order(item: "カフェラテ", size: "ベンティ")
puts order(size: "ベンティ", item: "モカ")

#キーワード引数でのデフォルト値
def order(item:, size:"ショート")
  "#{item}を#{size}サイズでください"
end

puts order(item: "カフェラテ")
puts order(size: "ベンティ", item: "モカ")
