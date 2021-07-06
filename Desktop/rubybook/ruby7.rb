def hello
  text = "こんにちは"
  p text
end

hello

# .class で オブジェクトのクラスを把握
p 1.class

class Drink
end

drink = Drink.new
p drink.class

#クラスに定義したメソッドを呼び出す
class Drink
  def name
    "カフェラテ"
  end
end

drink = Drink.new
puts drink.name

#メソッド一覧
p 1.methods

#クラスの中で同じクラスのメソッドを呼び出す
class Drink
  def name
    "モカ" + topping
  end
  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
puts drink.name
#selfをつかってレシーバーを調べる
class Drink
  def name
    p self
    "モカ" + topping
  end
  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
p drink
puts drink.name
