class Dog
    attr_accessor :color, :breed

    def initialize(color, breed)
        @color = color
        @breed = breed
    end

    def output_dog
        puts "A #{self.color} #{self.breed}"
    end
end

dog =  Dog.new