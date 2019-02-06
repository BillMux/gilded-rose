require_relative 'item'

class Normal < Item

  def update
    unless @quality.zero?
      @sell_in >= 0 ? @quality -= 1 : @quality -= 2
    end
    @sell_in -= 1 unless @sell_in.zero?
  end
end
