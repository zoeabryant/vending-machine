class Coin
  attr_reader :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end

end

class OnePence < Coin

  def initialize
    super "1p", 1
  end

end

class FiftyPence < Coin
  
  def initialize
    super "50p", 50
  end

end