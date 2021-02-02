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
  if songs.any? { |e| e == input }
    puts input
  elsif input.to_i > 0 && input.to_i < songs.length
    input = input.to_i - 1
    puts "Playing #{songs[input]}"
    "#{input}. #{songs[input]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.map.with_index { |e, i| puts "#{i+1}. #{e}" }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  case input
  when "help"
    help
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  when "list"
    list(songs)
  end
end