class Array
	def my_reverse()
		temparr = []
		temparr.push(self.pop) until self.empty?
		temparr

	end

	def my_index()
		hash = Hash[self.map.with_index.to_a]
		hash
		end 

	def my_index_position()
		indices = self.each_with_index.inject(Hash.new { Array.new }) do |hash, (obj, i)| 
    hash[obj] += [i]
    hash
	end

end
end




