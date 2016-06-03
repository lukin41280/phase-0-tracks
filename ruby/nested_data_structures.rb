# create hash of 3on3 basketball teams, with team names as key, value is hash of players with 
	# key/values for name, age, and array of skills

# THE 25-35 YR OLD 3 ON 3 BASKETBALL LEAGUE
basketball_league = {
	red_cows: {
		team_name: 'Red Cows',
		player1: {
			name: "Bobby",
		    age: 31,
		    skills: ["rebounding", "shot blocking", "defense"] 
		},
		player2: {
			name: "Sammy",
		    age: 27,
		    skills: ["dribbling", "passing"] 
		},
		player3: {
			name: "Ben",
		    age: 28,
		    skills: ["shooting", "defense", "rebounding"] 
		},
	},
	blue_moose: {
		team_name: 'Blue Moose',
		player1: {
			name: "Larry",
		    age: 33,
		    skills: ["shooting", "passing", "defense"] 
		},
		player2: {
			name: "Kevin",
		    age: 32,
		    skills: ["post ups", "shooting"] 
		},
		player3: {
			name: "Robbie",
		    age: 29,
		    skills: ["rebounding", "shot blocking"] 
		},
	},
	green_zebras: {
		team_name: 'Green Zebras',
		player1: {
			name: "Mickey",
		    age: 25,
		    skills: ["dribbling", "shooting", "defense"] 
		},
		player2: {
			name: "Charlie",
		    age: 34,
		    skills: ["defense"] 
		},
		player3: {
			name: "David",
		    age: 28,
		    skills: ["dribbling", "defense", "shooting"] 
		},
	},
}

# print to screen the skills of a player from specific teams
puts "The skills for Larry of the Blue Moose are:"
p basketball_league[:blue_moose][:player1][:skills]

puts "The second best skill for David of the Green Zebras is:"
p basketball_league[:green_zebras][:player3][:skills][1]

# print to screen the list of players on a specific team
puts "The players on the Red Cows are:"
p basketball_league[:red_cows]

puts "The second player on the Blue Moose is:"
p basketball_league[:blue_moose][:player2][:name]

# a player has improved so add a new skill to their array
# Charlie of the Green Zebras has gotten better at shooting.  Add skill and print
basketball_league[:green_zebras][:player2][:skills].push("shooting")
puts "Charlie's updated skills are:"
p basketball_league[:green_zebras][:player2][:skills]



