require_relative './item_expiry';
require_relative './quality';

class Item
  attr_reader :name, :expiry, :quality, :type

  TYPE_UPGRADABLE = "upgradable"
  TYPE_DEGRADABLE = "degradable"
  TYPES = [TYPE_UPGRADABLE, TYPE_DEGRADABLE]

  TYPE = TYPE_DEGRADABLE

  def initialize(name, expiry_days, quality)
    @name = name
    @expiry = ItemExpiry.new(expiry_days)
    @quality = Quality.new(quality)
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
    @expiry.degrade()
  end

  def update_quality()
    if self.class::TYPE == TYPE_DEGRADABLE
      @quality.degrade_by(quality_factor())
    end

    if self.class::TYPE == TYPE_UPGRADABLE
      @quality.upgrade_by(quality_factor())
    end
  end

  def quality_factor()
    expiry_days() <= 0 ? 2 : 1
  end
end
