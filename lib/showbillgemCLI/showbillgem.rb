require 'nokogiri'
requireNokogiri::HTM 'open-uri'
url = (open(http://www.playbill.com/productions?q=&venue-type=broadway&zip="))

class ShowbillScrape::Showbills
 
  attr_accessor  :title, :location, :summary

  @@all = []
  
  def initialize
    @title = title
    @location = location
    @summary = summary
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
    shows.map do |show|
      self.new(show.text.strip, "playbill.com"#{show.attr("href").strip}")
    end
  end

  def title
    @showdoc = self.showdoc.css("div.pb-pl-tile-title").text.strip
  end

  def location
    @theater = self.showdoc.css("div.pb-pl-tile-location").text.strip
  end

  def summary
    @summary = self.showdoc.css("div.bsp-bio-text").text.strip
  end
end
