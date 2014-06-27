
toys = { car: 400, doll:100, puppy:200, cat:500 };

puts "\nThe toys are: "
toys.each do |key,value| 
	puts "#{key} = #{value}"
end

print "\nEnter the money you have: "
k = gets.chomp.to_i

sum = 0
aa = []
name = []

toys.each_key { |key| name << key  }
toys.each_value {|value| aa << value}

len = aa.length
i=0
j=0
while i < len-1 
	while j < len-1 
		if (aa[j] > aa[j+1])
			temp = aa[j]
			aa[j] = aa[j+1]
			aa[j+1] = temp

			temp = name[j]
			name[j] = name[j+1]
			name[j+1] = temp

		end
		j+=1
	end
	i+=1
end

i=0

puts "\nYou purchased : "
while sum <= k
	if i >= aa.length		
		break
	end

	sum = sum + aa[i]

	if (sum <= k)	
		puts "#{name[i]} = #{aa[i]}"
		i += 1
		
	end
end

puts "\n \n"
