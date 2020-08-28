class Lion
    attr_reader :gender

    def initialize(gender)
        @legs = 4
        @speech = "roar"
        @gender = gender
    end
end

simba = Lion.new(male)
nala = Lion.new(female)

p simba.gender
p nala.gender
