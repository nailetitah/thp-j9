def say_hello(n)
	puts "Bonjour, #{n} !"
end

def ask_first_name 
	puts "Quel est ton prénom ?"
	first_name = gets.chomp!
	return first_name
end


say_hello(ask_first_name)
