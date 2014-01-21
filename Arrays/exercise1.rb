# Write a method that takes an array as an argument and returns another array with all 
# elements that are greater than 10 and doesn’t fail if you pass in non-numbers

my_array =[12,14,14,1,51,6,"dge", true, false, {}, 1232142, 3245, "dgseg"]
# def greater_than_ten (my_array)
# 	my_array.all? {|i| i.is_a? Fixnum}
# 	my_array.select {|a| a > 10}
# end

#solution 1
def more_than_ten(array = [])

	new_array = []
	array.each do |x|
		if x.is_a?(Numeric) && x > 10
			new_array << x
		end
	end
	new_array
end

#solution 2
def more_than_ten_2(array = [])
	array.select {|x| x.is_a?(Numeric) && x > 10}
end