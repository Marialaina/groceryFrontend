nums = ["one", "two", "three"]

# nums.each do |item|
#     puts "The item is " + item
# end

# nums.each { |str| puts 'the value is ' + str }

#Iterate over a hash to see if the hash has a current value.

states = {
    "California" => "CA",
    "Colorado" => "CO",
    "New York" => "NY"
}

# puts states.has_key?("Nevada")
# puts states.has_key?("California")
#this would be has value
# puts states.has_key?("CO")

# puts "this is a string".class

class String
    def is_palindrome? word
      word.upcase.reverse == word.upcase
    end
  end
  
# p "Borscht".is_palindrome? "hello"

class String
    def is_palindrome?
      self.upcase.split.join == self.upcase.split.join.reverse
    end

    def is_uppercase?
        self.upcase == self
    end
  end

# puts "radar".is_palindrome?
# puts "Radar".is_palindrome?
# puts "A Toyota".is_palindrome?
# puts "Sit on a potato pan Otis".is_palindrome?

# puts "Test upcase method:"
# puts "SOMETHING".is_uppercase?
# puts "SomThingElse".is_uppercase?


class Car
    def honk
        "honk honk"
    end
end

mustang = Car.new
tesla = Car.new

# puts mustang.honk

# class World
#     def name
#         "Nothing but shrimp"
#     end
# end

# world1 = World.new
# puts world1.name
# puts world1.class

class World
    def initialize
        @name = "Nothing But Shrimp"
    end
#Getter - retrieves the name from the @name variable
    def name
        @name
    end

# Setter - sets a new name in the @name variable for the whole instance
    def name=value
        @name = value
    end
end

#This is powered by a getter:
world1 = World.new
#This is powered by a setter:
world1.name = "Tatooine"
puts world1.name

class Galaxy
    def initialize
        @name = "Andromeda"
    end

    def name
        @name
    end

    def name=value
        @name = value
    end
end

# newGalaxy = Galaxy.new
# newGalaxy.name = "Milky Way"
# puts newGalaxy.name


class World
    attr_accessor :name
    def initialize
      # This is run any time we create a new instance of World
      @name = "Nothing But Shrimp"
    end
  end