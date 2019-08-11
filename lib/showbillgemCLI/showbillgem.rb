# url = (open(http://www.playbill.com/productions?q=&venue-type=broadway&zip="))
class ShowbillgemCLI::Showbillgem
 
  attr_accessor  :title, :location, :showtext

  @@all = []
  
  def initialize
    @title = title
    @location = location
    @showtext = showtext
    @@all << self
    @url = Nokogiri::(open("http://www.playbill.com/productions?q=&venue-type=broadway&zip="))
  end

  def self.all
    scrape details
    @@all
  end

  def self.scrape_shows
    doc = Nokogiri::HTML(open("http://www.playbill.com/productions?q=&venue-type=broadway&zip="))
    shows = doc.css
      self.new(show.text.strip, "playbill.com"#{show.attr("href").strip}")
    end
  end

  def title
    @title = self.showtext.css("div.pb-pl-tile-title").text.strip
  end

  def location
    @location = self.showtext.css("div.pb-pl-tile-location").text.strip
  end

  def showtext
    @showtext = self.showtext.css("div.bsp-bio-text").text.strip
  end
end
