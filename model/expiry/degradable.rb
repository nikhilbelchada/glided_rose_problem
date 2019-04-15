require_relative '../expiry';

class Expiry::Degradable < Expiry
  def update()
    @expiry_days -= 1
  end
end
