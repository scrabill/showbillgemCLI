require 'nokogiri'
require 'open-uri'
url = "https://www.playbill.com"

class ShowbillScrape::Scrape
  
  def self.ShowbillScrape
    Nokogiti::HTML(open("http:www.playbill.com"))
  end     
    
  def self.Scrape
    self.scrape 
 end
end 
    
    