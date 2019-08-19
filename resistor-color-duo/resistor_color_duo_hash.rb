class ResistorColorDuoHash
  @resistor_color = {
      "black" => 0,
      "brown"=> 1,
      "red" => 2,
      "orange" => 3,
      "yellow" => 4,
      "green" => 5,
      "blue" => 6,
      "violet" => 7,
      "grey" => 8,
      "white" => 9,
    }

    def self.value(arr)
      color_1, color_2 = arr.join(" ").split
      num = Proc.new do |color|
        @resistor_color[color].to_s
      end
      (num.call(color_1) + num.call(color_2)).to_i
    end
end
