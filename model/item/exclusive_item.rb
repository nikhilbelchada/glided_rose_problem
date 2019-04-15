require_relative '../item.rb'
require_relative '../quality/exclusive.rb';

class ExclusiveItem < Item

  def initialize(name, expiry_days, quality)
    super
    @quality = Quality::Exclusive.new(quality)
  end
end
