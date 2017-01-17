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
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end

def list(songs)
  songs. each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
song = gets.chomp

if songs.include?(song)
  puts "Playing #{song}"
else
  song_num = song.to_i
  if song_num < 1 || song_num > songs.length
    puts "Invalid input, please try again"
  else
    puts "Playing #{songs[song_num - 1]}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
input = ""
   while input
    puts "Please enter a command:"
     input = gets.strip
     case input
     when 'list'
       list(songs)
     when 'play'
       list(songs)
       play(songs)
     when 'help'
      help
    when 'exit'
           exit_jukebox
      break
   else
      help
     end
  end
end
