def jeuMan
win = 10
run = 0
counter = 0
puts "***"
puts "Ok, c'est parti pour lancer les dés toi-même !"
	while run != win
	puts "***"
	print "> Appuyez sur Entrée pour lancer les dés (ou entrez X pour quitter) "
	user_play = gets
		if user_play == "\n"
		user_dice = rand(1..6)
			if user_dice == 5 || user_dice == 6
			run += 1
			counter += 1
			puts "***"
			puts "Vous avez fait #{user_dice} !"
			puts "Vous montez d'une marche !"
			puts "Vous êtes désormais à la marche n°#{run}."
			elsif user_dice == 1
			puts "***"
			puts "Vous avez fait #{user_dice}."
			counter += 1
				if run == 0
				run = 0
				puts "Vous restez en bas des marches."
				else
				run -= 1
				puts "Vous descendez d'une marche."
				puts "Vous êtes désormais à la marche n°#{run}."
				end
			elsif user_dice == 2 || user_dice == 3 || user_dice == 4
			puts "***"
			puts "Vous avez fait #{user_dice}."
			puts "Rien ne se passe."
			counter += 1
				if run >= 1
				puts "Vous êtes toujours à la marche n°#{run}."
				else 
				puts "Vous êtes toujours en bas des marches."
				end
			end
		elsif user_play = "X"
			puts "***"
			puts "Merci d'avoir joué !"
			puts "***"
			puts "Pour revenir au début du programme, appuyez sur Entrée"
			choice = gets
			if choice == "\n"
				launch
			end
		end
	end
	puts "Bravo, vous avez gagné !"
	puts "Il vous aura fallu #{counter} lancés de dés."
	return counter
end

def jeu
win = 10
run = 0
counter = 0
	while run != win
	user_dice = rand(1..6)
		if user_dice == 5 || user_dice == 6
		run += 1
		counter += 1
		puts "Vous montez d'une marche !"
		puts "Vous êtes à la marche n°#{run}"
		elsif user_dice == 1
		counter += 1
			if run == 0
			run = 0
			puts "Vous restez en bas des marches."
			else
			run -= 1
			puts "Vous descendez d'une marche."
			puts "Vous êtes à la marche n°#{run}."
			end
		elsif user_dice == 2 || user_dice == 3 || user_dice == 4
		puts "Rien ne se passe."
		counter += 1
			if run >= 1
			puts "Vous êtes à la marche n°#{run}"
			else 
			puts "Vous êtes toujours en bas des marches."
			end
		end
	end
	puts "***"
	puts "Bravo, vous avez gagné !"
	puts "Il vous aura fallu #{counter} lancés de dés."
	puts "***"
	puts "Pour revenir au début du programme, appuyez sur Entrée"
			choice = gets
			if choice == "\n"
				launch
			end
	return counter
end

def jeuSim
win = 10
run = 0
counter = 0
	while run != win
	user_dice = rand(1..6)
		if user_dice == 5 || user_dice == 6
		run += 1
		counter += 1
		elsif user_dice == 1
		counter += 1
			if run == 0
			run = 0
			else
			run -= 1
			end
		elsif user_dice == 2 || user_dice == 3 || user_dice == 4
		counter += 1
			if run >= 1
			end
		end
	end
	return counter
end

def average_finish_time
parties = 0
total_parties = 100
total_counters = 0
while parties != total_parties
	jeuSim
	total_counters += jeuSim
	parties += 1
end
avg = total_counters / total_parties
puts "***"
puts "Vous venez de simuler 100 parties gagnées !"
puts "Il aura fallu lancer en moyenne #{avg} fois les dés pour gagner."
puts "***"
puts "Pour revenir au début du programme, appuyez sur Entrée"
			choice = gets
			if choice == "\n"
				launch
			end
end

def go(choix)
	if choix.match(/J/)
		jeuMan
	elsif choix.match(/S/)
		jeu
	elsif choix.match(/X/)
	average_finish_time	
	end
end
			
def launch
puts "------------------------------"
puts "Bienvenue dans le jeu de l'Oie"
puts "------------------------------"
puts "> Voici les modes de jeu :"
puts "1. Si tu veux lancer le dé et commencer une partie, tape J"
puts "2. Si tu veux simuler une partie, tape S"
puts "3. Si tu veux simuler 100 parties et connaître la moyenne de lancés de dés nécessaires pour gagner une partie, tape X"
puts "------"
puts "Alors, que choisis-tu ?"

loop do
print "> "
user_input = gets.chomp.to_s
if user_input == "J" || user_input == "S" || user_input == "X"
	go(user_input)
break
else 
	puts "Fais ton choix parmi les 3 modes de jeu proposés !"
end
end
end

launch

