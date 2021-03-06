=begin
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
=end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.any? { |e| e === input }
    puts input
  elsif input.to_i > 0 && input.to_i < songs.length
    input = input.to_i - 1
    puts "Playing #{songs[input]}"
    "#{input}. #{songs[input]}"
  else
    puts "Invalid input, please try again"
  end
end

#play(songs)

def list(songs)
  count = 1
  songs.map { |e|
    puts "#{count}. #{e}"
    count += 1
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  if input === "help"
    help
  elsif input === "play"
    play(songs)
  elsif input === "exit"
    exit_jukebox
  elsif input === "list"
    list(songs)
  end
end
