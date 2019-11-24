class List
    def initialize (array)
        @array = array
    end 

    def find_ones 
        points = []
        @array.each_with_index do |row, row_pos|
            #puts "\n", row, "\n"
            row.each_with_index do |col, col_pos|
                if col == 1
                    #puts "found a one @ ", row_pos, " ", col_pos
                    points.push [row_pos, col_pos]
                end
            end
        end
        return points
    end

    def blur (distance)
        while distance > 0 do 
            points = find_ones 
            points.each do |point|
                if point[1] != 0
                    @array[point[0]][point[1] - 1] = 1 #point [1] cannot be 0
                end
                if point [1] != @array[0].length - 1
                    @array[point[0]][point[1] + 1] = 1 #point [1] cannot be 3
                end
                if point [0] != 0
                    @array[point[0] - 1][point[1]] = 1 #point [0] cannot be 0
                end
                if point [0] != @array.length - 1 
                    @array[point[0] + 1][point[1]] = 1 #point [0] cannot be 3
                end
            end
            distance = distance - 1
        end
        @array.each do |array|
            puts array.join('')
        end
    end

end

list = List.new([
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
        ])

list.blur (2)



    



