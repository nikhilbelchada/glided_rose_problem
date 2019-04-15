require_relative '../quality';

class Quality::Exclusive < Quality
  def update(expiry_days)
    @quality += 1

    @quality += 1 if expiry_days <= 10
    @quality += 1 if expiry_days <= 5
    @quality = 0 if expiry_days <= 0
  end
end
