require 'byebug'
i = 1
j = 0
byebug
until i > 1000000
	i *= 2
	j += 1
end
puts "i = #{i}, j = #{j}"

# your can run it in terminal 
# ruby debugest.rb

# the following keywords will navigate through the debugging
# s - step
# n - next
# c - continue
# b - break
# backtrace - bt
# q - quit

# Chapter 8 Documentat ion, Error Handling, Debugging, and Testing