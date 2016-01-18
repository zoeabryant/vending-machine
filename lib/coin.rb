class Coin
  attr_reader :value

  def initialize(value)
    @value = value
  end

end

class OnePence < Coin

  def initialize
    super 1
  end

end

class TwoPence < Coin

  def initialize
    super 2
  end

end

class FivePence < Coin

  def initialize
    super 5
  end

end

class TenPence < Coin

  def initialize
    super 10
  end

end

class TwentyPence < Coin

  def initialize
    super 20
  end

end

class FiftyPence < Coin
  
  def initialize
    super 50
  end

end

class OnePound < Coin
  
  def initialize
    super 100
  end

end

class TwoPounds < Coin
  
  def initialize
    super 200
  end

end