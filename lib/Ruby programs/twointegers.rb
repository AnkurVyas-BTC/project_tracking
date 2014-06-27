
=begin
1. You don't have to use existing utilities which has already implemented algorithms like sort, search etc. 
2. You have to use core programming features to solve the problems.
3. Wherever looping is required use while OR until loop only.
4. Write each problem in separate file.
5. Try to make code reusable.
=end

=begin
Problem 2
It is possible to write five as a sum in exactly six different ways:

4 + 1
3 + 2
3 + 1 + 1
2 + 2 + 1
2 + 1 + 1 + 1
1 + 1 + 1 + 1 + 1

How many different ways can N be written as a sum of at least two positive integers?
=end

def sumofint(target,maxValue,number)
  if target == 0
        print "#{number}\n"
    else 
        if maxValue > 1
            sumofint(target, maxValue-1, number)
        end
        if maxValue <= target
            sumofint(target-maxValue, maxValue, maxValue.to_s + "+" + number)
        end
  end
end
print "Enter the number n: "
n = gets.chomp()
n2 = n
a = sumofint(n.to_i,n2.to_i,"")
puts a

