
# インスタンス変数
class Drink
  def order(item)
    puts "#{item}を下さい"
    @name = item
  end
  def reorder
    puts "#{@name}をもう１杯下さい"
  end
end

drink = Drink.new
drink.order("カフェラテ")
drink.reorder

# インスタンス変数はオブジェクトごとに存在する
class Drink
  def order(item)
    puts "#{item}を下さい"
    @name = item
  end
  def reorder
    puts "#{@name}をもう１杯下さい"
  end
end

drink1 = Drink.new
drink2 = Drink.new
drink1.order("カフェラテ")
drink2.order("モカ")
drink1.reorder
drink2.reorder

# インスタンス変数を取得するメソッドをつくる
class Drink
  def order(item)
    puts "#{item}を下さい"
    @name = item
  end
  def name
    @name
  end
end

drink = Drink.new
drink.order("カフェラテ")
puts drink.name

# インスタンス変数へ代入するメソッドをつくる
#53行目のname=の文 =が末尾の時離して書くことができる
class Drink
  def name= (text) #textにカフェオレがはいる
    @name = text
  end
  def name
    @name
  end
end

drink = Drink.new
drink.name = "カフェオレ"
puts drink.name

#instance_variablesメソッド 全てのインスタンス変数を返す
class Drink
  def order(item) #textにカフェオレがはいる
    @name = item
  end
end

drink = Drink.new
drink.order("カフェラテ")
p drink.instance_variables

# インスタンス変数は代入した時に作られるので、drink.order("カフェラテ")を実行しないとメソッドを返してくれない
