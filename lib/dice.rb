class Die
  RANGE = 0..0

  def self.roll
    Kernel.rand(const_get('RANGE'))
  end

  def self.to_s
    super.downcase
  end
end

class D4 < Die
  RANGE = 1..4
end

class D6 < Die
  RANGE = 1..6
end

class D8 < Die
  RANGE = 1..8
end

class D10 < Die
  RANGE = 1..10
end

class D12 < Die
  RANGE = 1..12
end

class D20 < Die
  RANGE = 1..20
end

class D100 < Die
  RANGE = 1..100
end