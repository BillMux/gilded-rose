require_relative 'item'

class Conjured < Item

  def update
    @sell_in > 0 ? @quality -= 2 : @quality -= 4 unless @quality.zero?
    @sell_in -= 1 unless @sell_in.zero?
  end
end
