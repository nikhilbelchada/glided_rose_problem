class ItemExpiry
  attr_reader :expiry_days

  def initialize(expiry_days)
    @expiry_days = expiry_days
  end

  def degrade()
    @expiry_days -= 1
  end

  def expire()
    @expiry_days = 0
  end
end
