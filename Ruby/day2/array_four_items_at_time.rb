i = 1
array = (0..16).to_a
array.each do |item|
	if array.index(item) - i == 0 then
		p "#{array[i]}, #{array[i + 1]}, #{array[i + 2]}, #{array[i + 3]}"
		i = i + 4
	end
end
