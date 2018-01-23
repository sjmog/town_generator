class Modifier
  attr_reader :raw

  def initialize(raw)
    @raw = raw
  end

  def self.for(score)
    new(((score - 10).to_f / 2).round)
  end

  def to_s
    return "+0" if @raw == 0
    "#{ raw.positive? ? "+" : "" }#{raw}"
  end

  def *(numeric)
    @raw = raw * numeric
    self
  end
end