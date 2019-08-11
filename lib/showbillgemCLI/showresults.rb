class ShowbillgemCLI::Scraper

def self.show_scraper
  if ShowbillgemCLI::showbillgem.allempty?
    doc = Nokogiri::HTML(open("http://www.playbill.com/productions?q=&venue-type=broadway&zip=)
    array_showbillgem_list = doc.css("li")[1...50]
    array_showbillgem_list.each do |showbillgem_attr|
    showbillgem = ShowbillgemCLI::showbillgem.new
    showbillgem.title = showbillgem_attr.css("a").children.first.text
    showbillgem.url = "http://www.playbill.com" + showbillgem_attr.css("a").attribute("href").value
  end
 end
end
  
  def self.scrape_showbillgem_list(index)
    showbillgem = ShowbillgemCLI::showbillgem.all[index]
    doc = Nokogiri::HTML(open(showbillgem.url))    
    showbillgem = doc.css("div.pb-pl-tile-title")	    
    shows.map do |show|	   
    self.new(show.text.strip, "type=broadway&zip=#{show.attr("href").strip}")	     
    end	
  
end
  
  def self.find(number)
    self.all[number-1] 
  end

def showtext
  @showtext = Nokogiri::HTML(open(self.url))
end  