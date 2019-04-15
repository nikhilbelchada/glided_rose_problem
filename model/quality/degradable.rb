require_relative '../quality';

class Quality::Degradable < Quality
  def update(expiry_days)
    quality = @quality - 1
    quality -= 1 if expiry_days <= 0

    @quality = quality < 0 ? 0 : quality
  end
end
