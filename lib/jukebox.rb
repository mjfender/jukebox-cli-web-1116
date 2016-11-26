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
  puts  "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |element, index|
    puts "#{index+1}. #{element}"
  end
end

def play(songs)
puts "Please enter a song name or number:"
song_selection = gets.chomp
  #binding.pry
    if songs.include?(song_selection)
      puts "Playing #{song_selection}"
    elsif song_selection.to_i > 0 && songs[song_selection.to_i - 1]
       song_selection = songs[song_selection.to_i - 1]
       puts "Playing #{song_selection}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(array)
  help
  command = 0
  while command == 0
  puts "Please enter a command:"
  command = gets.chomp

    if command == "help"
      help
    elsif command == "play"
      play
    elsif command == "list"
      list
    elsif command == "exit"
      exit_jukebox
    else
      command = 0
    end
  end
end
#play(["Phoenix - 1901", "Tokyo Police Club - Wait Up", "Sufjan Stevens - Too Much", "The Naked and the Famous - Young Blood", "(Far From) Home - Tiga", "The Cults - Abducted", "Phoenix - Consolation Prizes", "Harry Chapin - Cats in the Cradle", "Amos Lee - Keep It Loose, Keep It Tight"])
