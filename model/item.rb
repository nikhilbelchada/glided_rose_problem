require_relative './expiry/degradable';

class Item
  attr_reader :name, :expiry, :quality

  def initialize(name, expiry_days, quality)
    @name = name
    @expiry = Expiry::Degradable.new(expiry_days)
  end

  def expiry_days()
    @expiry.expiry_days
  end

  def quality()
    @quality.quality
  end

  def update()
    update_expiry()
    update_quality()
  end

  def update_expiry()
    @expiry.update()
  end

  def update_quality()
    @quality.update(expiry_days)
  end
end
