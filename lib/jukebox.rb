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

# I accept the following commands:
# - help : displays this help message
# - list : displays a list of songs you can play
# - play : lets you choose a song to play
# - exit : exits this program

# 1. Phoenix - 1901
# 2. Tokyo Police Club - Wait Up
# 3. Sufjan Stevens - Too Much
# 4. The Naked and the Famous - Young Blood
# 5. (Far From) Home - Tiga
# 6. The Cults - Abducted
# 7. Phoenix - Consolation Prizes
# 8. Harry Chapin - Cats in the Cradle
# 9. Amos Lee - Keep It Loose, Keep It Tight

def help
  puts   "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if songs.include?(response)
    puts "Playing #{response}"
  elsif (1..songs.length).include?(response.to_i)
    puts "Playing #{songs[response.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help()
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit" do
    if response == "help"
      help()
    elsif response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    else
      puts "Invalid input, please try again2"
    end
    puts "Please enter a command:"
    response = gets.chomp
  end
  exit_jukebox()
end
