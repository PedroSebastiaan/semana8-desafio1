# CREATE CLASS
class Card

    # GETTER & SETTER
    attr_accessor :number, :kind

    # CREATE METHOD
    def initialize(number, kind)
        obtain_number(number)
        obtain_kind(kind)
    end

    def obtain_number(number)
        if number >= 1 && number <=13
            @number = number 
        else
            raise "not correct number"
        end
    end

    def obtain_kind(kind)
        if ["C","D","E","T"].include?(kind)
            @kind = kind
        else
            raise "not correct kind"
        end
    end

    def to_s
        "NUMBER = #{self.number}, KIND = #{self.kind}"
    end
end

# CREATE METHOD FOR CARD GENERATOR
ary = []
kinds = ["C","D","E","T"]

5.times do |i|
    ary << Card.new(rand(1..13), kinds.sample)
end

puts ary