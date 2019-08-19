class ResistorColorDuo
  @resistor_color = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.value(arr)
    color_1, color_2 = arr.join(" ").split
    num = Proc.new do |color|
          @resistor_color.index(color).to_s
        end
    (num.call(color_1) + num.call(color_2)).to_i
  end
end
