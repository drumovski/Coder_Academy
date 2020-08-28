def decimal_to_binary (decimal)
    next_number = decimal
    binary = ''
	while next_number > 1
      next_number /= 2.to_i
      binary += (decimal % 2).to_s
      puts "next number = #{next_number}"
      puts "next number = #{next_number}"
    end
    binary
end
puts decimal_to_binary(19)