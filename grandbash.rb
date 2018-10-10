def how_many_match(my_n, bash_n)
  counter = 0
  i = 0
   my_n.length.times do 
   p bash_n[i]
   puts my_n[i]
   	if bash_n[i] == my_n[i]
   		counter += 1
   puts counter
   end
   i += 1
   end
  p counter
end
def off_by_one_number(my_n, bash_n)
	counter = 0
	i = 0
	my_n.length.times do
	if bash_n[i] == my_n[i]
		counter += 1
	end
	i += 1
end
	 counter == my_n.length - 1
end
 puts off_by_one_number("1234", "1233")

 def off_by_one_arr(my_n, bash_n)
 	arr = []
 	bash_n.each do |winner|
 		if off_by_one_number(winner, my_n)
 			arr << winner
 		end
 	end
 	arr
 end
 print off_by_one_arr("1233",["1234", "1443", "1233", "5672"])