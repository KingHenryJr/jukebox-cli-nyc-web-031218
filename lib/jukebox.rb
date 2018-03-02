require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
 help = "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
puts help
end

def list(songs)
  songs.each_with_index do |value, index|
    puts "#{index + 1}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  
    
    ans = gets.chomp 
    if (1..9).to_a.include?(ans.to_i)
      puts "Playing #{songs[ans]}."
    elsif songs.include?(ans)
      puts "Playing #{ans}"
    else   
      puts "Invalid input, please try again"
    end
end 



