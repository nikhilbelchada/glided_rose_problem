require_relative '../quality';

class Quality::Upgradable < Quality
  def update(expiry_days)
    @quality += 1
    @quality += 1 if expiry_days <= 0
  end
end
