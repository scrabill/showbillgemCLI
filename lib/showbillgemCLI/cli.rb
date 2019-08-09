class Showbills::CLI

def call
  list_deals
  menu
  goodbye
end

def list_shows
  #here doc
 puts "Today's Shows:"
 puts  <<-DOC.gsub /^\s*/, ''
 doc
end 
 
def menu
input = nil
  while input != "exit"
  puts "Enter the number of the show you'd like more information on or type list or type exit."
  input = gets.strip.downcase
  if input.to_1 > 0
  puts @shows[input.to_i-1]
elsif input == "list"
  list_shows
else  
  puts "Not sure which show you want to see? Type list or exit."
  when "1"
     puts "More info on show 1..."
  when "2"
     puts "More info on show 2..."
   when "list"
   end
  end 
end  

def goodbye
   puts "Thank you for checking out Playbill.com"
  end
 end
     
     


