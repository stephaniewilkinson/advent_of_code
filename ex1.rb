module Advent
  require 'pry'

  @instruction_array = "R1, R1, R3, R1, R1, L2, R5, L2, R5, R1, R4, L2, R3, L3, R4, L5, R4, R4, R1, L5, L4, R5, R3, L1, R4, R3, L2, L1, R3, L4, R3, L2, R5, R190, R3, R5, L5, L1, R54, L3, L4, L1, R4, R1, R3, L1, L1, R2, L2, R2, R5, L3, R4, R76, L3, R4, R191, R5, R5, L5, L4, L5, L3, R1, R3, R2, L2, L2, L4, L5, L4, R5, R4, R4, R2, R3, R4, L3, L2, R5, R3, L2, L1, R2, L3, R2, L1, L1, R1, L3, R5, L5, L1, L2, R5, R3, L3, R3, R5, R2, R5, R5, L5, L5, R2, L3, L5, L2, L1, R2, R2, L2, R2, L3, L2, R3, L5, R4, L4, L5, R3, L4, R1, R3, R2, R4, L2, L3, R2, L5, R5, R4, L2, R4, L1, L3, L1, L3, R1, R2, R1, L5, R5, R3, L3, L3, L2, R4, R2, L5, L1, L1, L5, L4, L1, L1, R1".split ',' ' '

  @x = 0
  @y = 0
  @dir = 360

  @instruction_array.each { |instruction|
    if (instruction[0] == "R")
      @dir = @dir + 90
    elsif (instruction[0] == "L")
      @dir = @dir - 90
    end

    @distance = instruction[1..3].to_i

    if (@dir == 0 || @dir % 360 == 0)
      @y = @y + @distance
    elsif (@dir % 270 == 0)
      @x = @x - @distance
    elsif (@dir % 180 == 0)
      @y = @y - @distance
    elsif (@dir % 90 == 0)
      @x = @x + @distance
    end
  }

  puts "final coords: #{@x}, #{@y}"
end
