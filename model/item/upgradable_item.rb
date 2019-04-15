require_relative '../item.rb'
require_relative '../quality/upgradable.rb';

class UpgradableItem < Item
  def initialize(name, expiry_days, quality)
    super
    @quality = Quality::Upgradable.new(quality)
  end
end
