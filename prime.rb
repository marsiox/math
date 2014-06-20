class Prime

  def print_decorated(table, cell_size)
		table.each do |sub_arr|
			str = ""
			sub_arr.each do |element|
				num_spaces = cell_size - element.to_s.size
				space = ""
				num_spaces.times{space.concat(" ")}
				element = "#{element}#{space}"
				str = str.concat(element)
			end
		puts str
		end
  end

	def generate(lim)
		primes = []
		i = 2
		while i < lim.to_i
			primes.push(i) if is_prime?(i)
			i=i+1
		end
		return primes
	end

	def is_prime?(num)
		(2..num).to_a.each do |subnum|
		  return false if num != subnum && num%subnum == 0
		end

		true
	end

	def make_table(side)
		x = Array.new(side.size) { Array.new(side.size) }
		x[0] = side
		x.each_with_index do |item, index|
			if index > 0
				item.each_with_index do |row_element, row_index|
					if row_index == 0
						item[row_index] = side[index]
					else
						item[row_index] = x[index][0] * x[0][row_index]
					end
				end
			end
		end
		return x
	end
end

lim = ARGV[0].to_i
p = Prime.new
cell = (lim*lim).to_s.size+1
side = p.generate(lim)
table = p.make_table(side)
p.print_decorated(table, cell)