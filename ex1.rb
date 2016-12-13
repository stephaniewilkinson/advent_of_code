module Advent
  require 'pry'

  @instruction_array = "R1, R1, R3, R1, R1, L2, R5, L2, R5, R1, R4, L2, R3, L3, R4, L5, R4, R4, R1, L5, L4, R5, R3, L1, R4, R3, L2, L1, R3, L4, R3, L2, R5, R190, R3, R5, L5, L1, R54, L3, L4, L1, R4, R1, R3, L1, L1, R2, L2, R2, R5, L3, R4, R76, L3, R4, R191, R5, R5, L5, L4, L5, L3, R1, R3, R2, L2, L2, L4, L5, L4, R5, R4, R4, R2, R3, R4, L3, L2, R5, R3, L2, L1, R2, L3, R2, L1, L1, R1, L3, R5, L5, L1, L2, R5, R3, L3, R3, R5, R2, R5, R5, L5, L5, R2, L3, L5, L2, L1, R2, R2, L2, R2, L3, L2, R3, L5, R4, L4, L5, R3, L4, R1, R3, R2, R4, L2, L3, R2, L5, R5, R4, L2, R4, L1, L3, L1, L3, R1, R2, R1, L5, R5, R3, L3, L3, L2, R4, R2, L5, L1, L1, L5, L4, L1, L1, R1".split ',' ' '

  # @instruction_array = ["L100", "R100"]

  @x = 0
  @y = 0
  @dir = 360

  @instruction_array.each { |instruction|
    if (instruction[0] == "R")
      @dir += 90
      puts "now turn right (#{@dir})"
    elsif (instruction[0] == "L")
      @dir -= 90
      puts "now turn left (#{@dir})"
    end

    @distance = instruction[1..3].to_i

    @dir %= 360

    if (@dir == 0)
      @y += @distance
      puts "so that you face north"
      puts "move #{@distance}"
    elsif (@dir == 270)
      puts "so that you face west"
      @x -= @distance
      puts "move #{@distance}"
    elsif (@dir == 180)
      puts "so that you face south"
      @y -= @distance
      puts "move #{@distance}"
    elsif (@dir == 90)
      puts "so that you face east"
      @x += @distance
      puts "move #{@distance}"
    end
    puts "coords: #{@x}, #{@y}"
    puts
  }
  puts "final coords: #{@x}, #{@y}"
end
