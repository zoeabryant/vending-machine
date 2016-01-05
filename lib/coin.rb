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

class TwoPence < Coin

  def initialize
    super "2p", 2
  end

end

class FivePence < Coin

  def initialize
    super "5p", 5
  end

end

class TenPence < Coin

  def initialize
    super "10p", 10
  end

end

class FiftyPence < Coin
  
  def initialize
    super "50p", 50
  end

end