# Write some code that takes an array and returns another array 
# with each element multiplied by itself if it's numeric

my_array =[12,14,14,1,51,6,"dge", true, false, {}, 1232142, 3245, "dgseg"]

#solution 1
def power_of_two(array)
	new_array = []
	array.select! {|x| x.is_a?(Numeric)}
	array.each do |y|	
		new_array << y * y
	end
	new_array
end

#solution 2
def power_of_two_2(array)
	new_array = array.select {|x| x.is_a?(Numeric)}
	new_array.map {|x| x * x}
end

#solution 3
def power_of_two_2(array)
	new_array = []
	array.each {|x| new_array << x * x if x.is_a?(Numeric)}
	new_array
end