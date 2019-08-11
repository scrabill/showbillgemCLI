class ShowbillgemCLI::CLI

def list_shows
 puts "Current Shows:"
end 
 
def menu
input = nil
  while input != "exit"
  puts "Enter the number of the show you'd like more information on or type list or type exit."
  input = gets.strip.downcase
  if input.to_1 > 0
  puts @showbillgem[input.to_i-1]
elsif input == "list"
  list_shows
else  
  puts "Not sure which show you want to see? Type list or exit."
  end
 end  
end

 def goodbye
   puts "Thank you for checking out Playbill.com"
end
     
     


