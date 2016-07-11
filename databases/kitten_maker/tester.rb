require "sqlite3"

puts "enter your name"
name = gets.chomp
# puts "enter a club"
# club = gets.chomp
# puts "enter average distance"
# distance = gets.chomp

db = SQLite3::Database.new("#{name}.db")


