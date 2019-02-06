require_relative 'item'

# class for generic items
class Normal < Item
  def update
    unless @quality.zero?
      @quality -= @sell_in > 0 ? 1 : 2
    end
    @sell_in -= 1 unless @sell_in.zero?
  end
end
