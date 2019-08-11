 @@all
end	

def self.current
  self.scrape_shows	
  end
  
  def self.scrape_shows
    doc = Nokogiri::HTML(open(""http://www.playbill.com/productions?q=&venue-type=broadway&zip=""))	    
    shows = doc.css("div.pb-pl-tile-title")	    
    shows.map do |show|	   
    self.new(show.text.strip, ""http://www.playbill.com/productions?q=&venue-type=broadway&zip=#{show.attr("href").strip}")	     
    end	
  
end
  
  def self.find(number)
    self.all[number-1] 
  end

def showtext
  @showtext = Nokogiri::HTML(open(self.url))
end  