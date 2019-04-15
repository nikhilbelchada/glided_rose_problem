require_relative '../item.rb';
require_relative '../quality/degradable.rb';

class DegradableItem < Item
  def initialize(name, expiry_days, quality)
    super
    @quality = Quality::Degradable.new(quality)
  end
end
