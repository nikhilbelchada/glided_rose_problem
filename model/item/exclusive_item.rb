require_relative '../item.rb'

class ExclusiveItem < Item
  TYPE = TYPE_UPGRADABLE

  def update_quality()
    expiry_days() <= 0 ? @quality.full_degrade() : super
  end

  def quality_factor()
    factor = 1

    factor = 2 if expiry_days() <= 10
    factor = 3 if expiry_days() <= 5

    factor
  end
end
