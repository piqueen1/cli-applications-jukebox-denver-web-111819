require "pry"

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

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  chosen = gets.strip
  #binding.pry
  
  if chosen.to_i <= songs.length && chosen.to_i > 0
    puts "Playing #{songs[chosen.to_i-1]}"
    return
  end
  
  if songs.include?(chosen)
    #binding.pry
    puts "Playing #{chosen}"
    return chosen
  end
 
  puts "Invalid input, please try again" 
end

def list(songs)
  songs.each_with_index{ |song, i| 
    puts "#{i + 1}. #{song}"}
end

#
# all numbers with index:
# @numbers.each_with_index{|number, i| puts "#{i}: #{number}"}

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
    puts "Please enter a command:"
    command = gets.strip
    
    if command == "help"
      help
    elsif command == "play"
      play(songs)
    elsif command == "list"
      list(songs)
    elsif command == "exit"
      exit_jukebox
      break
    end
  end
end

#play(songs)