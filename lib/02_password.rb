def password 
puts "Choisissez un mot de passe : "
print "> "
user_password = gets.chomp
return user_password
end

def login(pwd)
puts "Veuillez renseigner votre mot de passe"

loop do
	print "> "
	user_asked_password = gets.chomp
	if user_asked_password == pwd
		puts "Bienvenue dans la matrice..."
		break
	else
		puts "Mot de passe incorrect. Veuillez réessayer."
	end
end
end

def perform
	login(password)
end
perform