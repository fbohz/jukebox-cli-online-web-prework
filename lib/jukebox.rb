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
      puts <<~HEREDOC
    
    I accept the following commands:
    - help: displays this message
    - list: displays a list of songs you can play
    - play: lets you choose a song to play
    - exit: exits this program

    HEREDOC
end   

def play(songs) 
  puts "Please enter a song name or number:"
  pick = gets.chomp
  
  songs.each_with_index do |song, index|
      if song.include?(pick) 
      puts "Playing #{song}"
      elsif songs[pick.to_i] == song
      puts "Playing #{song}"
      else
        puts "Invalid input, please try again"

    end
  end 
  
end  

def list(songs)
  songs.each_with_index do |data, i|
  puts "#{i + 1}. #{data}"
  end 
end  

def exit_jukebox
  puts "Goodbye"

end

def run(songs) 
  help 
  puts "Please enter a command:"
  res = gets.downcase.strip
  if res == "play"
    play(songs)
    
  end
  
   if res == "exit"
    exit_jukebox
    
  end
end