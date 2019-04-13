require_relative '../item.rb'

class FastDegradableItem < Item
  TYPE = TYPE_DEGRADABLE

  def quality_factor()
    factor = 2

    factor *= 2 if expiry_days() <= 0

    factor
  end

end
