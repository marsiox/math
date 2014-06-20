class Perfect

  def divisors(number)
    divisors = []
    1.upto(number) do |i|
     divisors << i if number%i == 0
   end
    # exclude the number itself
    divisors.pop
    divisors
  end

  def summarize(numbers)
  	sum = 0
  	numbers.each_with_index do |n, i|
     sum += n
   end
   sum
 end

 def find(upto)
   (1..upto).to_a.select { |x| summarize(divisors(x)) == x}
 end

end

started = Time.now
puts "Started at #{started}"

perfect = Perfect.new
numbers = perfect.find(10000)
puts numbers

ended = Time.now
puts "Ended at #{ended}"
puts "Took #{ended - started} sec."