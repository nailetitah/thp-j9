# Fonction random
# Def jet du dé
# Def parcours avec loop + loop et if
# 

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
puts "Bravo, vous avez gagné !"
return counter
end

def hundredGames(rec)
	games = rec.times { |i| jeu }
end

def counterPlayed(games)
	puts "Nombre de parties jouées : #{games}"
end

def perform
	counterPlayed(jeu)
end

