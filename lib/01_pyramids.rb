def half_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

loop do
	print "> " 
	user_number = gets.to_i
	if user_number <= 25 && user_number >= 1
		puts "Voici la pyramide : "
			for i in 1..user_number do
			puts " " * (user_number - i) + "#" * i
			end
    	break
	else puts "Peux-tu choisir un nombre entier entre 1 et 25 ?"
  end
end
end

def full_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

loop do
	print "> " 
	user_number = gets.to_i
	if user_number <= 25 && user_number >= 1
		puts "Voici la pyramide : "
			for i in 1..user_number do
			l = " " * (user_number - i) + "#" * i
			r = "#" * (i - 1)
			puts l + r
			end
    	break
	else puts "Peux-tu choisir un nombre entier entre 1 et 25 ?"
  end
end
end

def wtf_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

loop do
	print "> " 
	user_number = gets.to_i
	if user_number <= 25 && user_number >= 1 && user_number % 2 == 1
		half_user_number = user_number / 2
		sub_half_user_number = half_user_number + 1
		puts "Voici la pyramide : "
			for i in 1..half_user_number do
			l = " " * (half_user_number + 1 - i) + "#" * i
			r = "#" * (i - 1)
			puts l + r
			end
			for i in half_user_number..half_user_number do
			puts "#" * user_number
			end
			for i in sub_half_user_number...user_number do
			bl = " " * (i - sub_half_user_number + 1) + "#" * (user_number - i - 1)
			br = "#" * (user_number - i)
			puts bl + br
			end
    	break
	else puts "Tu as entré un nombre pair. Peux-tu choisir un nombre impair entre 1 et 25 ?"
  end
end
end

wtf_pyramid