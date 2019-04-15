require_relative '../item.rb'
require_relative '../quality/fast_degradable.rb';

class FastDegradableItem < Item
  def initialize(name, expiry_days, quality)
    super
    @quality = Quality::FastDegradable.new(quality)
  end
end
