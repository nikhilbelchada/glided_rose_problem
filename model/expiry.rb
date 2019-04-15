class Expiry
  attr_reader :expiry_days

  def initialize(expiry_days)
    @expiry_days = expiry_days
  end

  def update()
    raise "Must Override"
  end
end
