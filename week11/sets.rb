def intersection(set1, set2)
	# set1 and set2 are arrays
	# return the intersection
	arr = []
	set1.each do |i| 
		if set2.include?(i)
			arr.push(i).uniq
		end
	end
	arr
end
p intersection([1,2,3], [3,4,5])

def union(set1, set2) 
	# set1 and set2 are arrays
	# return the union
	set1.concat(set2).uniq
end

def symmetric_difference(set1, set2)
	# set1 and set2 are arrays
	# return the symmetric difference
	set1.each do |i| 
		if set2.include?(i)
	  		set1.delete(i)
		    set2.delete(i)
    	end
	end
	  arr = set1.concat(set2)
	  p arr
end
set3 = ["a", "b", "c"]
set4 = ["c", "d", "e"]
set1 = [1,2,3]
set2 = [3,4,5]
symmetric_difference(set3, set4)
symmetric_difference(set1, set2)