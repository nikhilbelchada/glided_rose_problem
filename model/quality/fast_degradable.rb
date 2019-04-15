require_relative '../quality';

class Quality::FastDegradable < Quality
  def update(expiry_days)
    quality = @quality - 2
    quality -= 2 if expiry_days <= 0

    @quality = quality < 0 ? 0 : quality
  end
end
