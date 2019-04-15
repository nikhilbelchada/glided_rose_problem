require_relative '../item.rb'
require_relative '../quality/non_degradable.rb';
require_relative '../expiry/non_degradable.rb';

class LegendaryItem < Item
  def initialize(name, expiry_days, quality)
    super
    @expiry = Expiry::NonDegradable.new(expiry_days)
    @quality = Quality::NonDegradable.new(quality)
  end
end
