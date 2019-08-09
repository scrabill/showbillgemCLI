class Showbills::CLI

def call
  list_deals
  menu
end

def list_shows
  #here 
  
def menu
  puts "Enter the number of the show you'd like more information on or type exit."
  while input
  
  case input
  when "1"
     puts "More info on show 1"
  when "2"
     puts "More info on show 2"
   end
  end 
end  
     
     



elsif input == "list"
   list_shows
  else 
    puts "Invalid entry.\nType 'list' to list Broadway shows currently playing or type 'exit' to leave:" if input != "exit"
   end
  end
end  
  