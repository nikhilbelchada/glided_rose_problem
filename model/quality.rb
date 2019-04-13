class Quality
  attr_reader :quality

  def initialize(quality)
    @quality = quality
  end

  def upgrade_by(value)
    @quality += value
  end

  def degrade_by(value)
    quality = @quality - value
    @quality = quality <= 0 ? 0 : quality
  end

  def full_degrade()
    @quality = 0
  end
end
