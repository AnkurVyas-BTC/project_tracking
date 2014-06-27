=begin
1. If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below N.

=end
def computesum(n)
i = 1
sum = 0

puts "\n\n The numbers are : "
while i < n 

		if ((i%3 == 0) || ( i%5==0))
			sum += i
			print " #{i}"
		end
		i += 1
end

return sum
end

print "\nEnter the number n : "
n = gets.chomp().to_i

sum = computesum(n)
puts "\n\n The sum is : #{sum}"