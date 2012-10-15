def grep(filename, string_to_be_found)
	File.open(filename, 'r') {|f| f.readlines.each_with_index {|line, index| puts "Line #{index + 1} - #{line}" unless line[string_to_be_found] == nil}}
end

grep("tree.rb", "tree")