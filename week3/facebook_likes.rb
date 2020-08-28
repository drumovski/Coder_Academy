def facebook_likes(people)
    case people.length
        when 0
        return "No one likes this"
        when 1
        return "#{people[0]} likes this"
        when 2
        return "#{people[1]} and #{people[0]} like this"
        when 3
        return "#{people[2]}, #{people[1]} and #{people[0]} like this"
        when 4..(1.0/0.0)
        return "#{people[-1]}, #{people[-2]} and #{(people.length-2)} others like this"
    end

        
end


