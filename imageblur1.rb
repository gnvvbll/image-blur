class List
    def initialize (array)
        @array = array
    end 

    def output_list
        @array.each do |array|
            puts array.join('')
        end
    end
end

list = List.new([
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 1],
        [0, 0, 0, 0]
        ])

list.output_list

    



