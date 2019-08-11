require 'nokogiri'
requireNokogiri::HTM 'open-uri'
url = (open('http://www.playbill.com/productions?venue-type=broadway'))

class ShowbillScrape::Showbills
 
  attr_accessor :name, :url, :theater, :summary

  @@all = []
  
  def initialize(name=nil, url=nil)
    @name = name
    @url = url
    @@all << self
    @doc = Nokogiri::(open("http://www.playbill.com/productions?venue-type=broadway"))
  end

  def self.all
    scrape details
    @@all
  end

  def self.scrape_shows
    doc = Nokogiri::HTML(open("https://www.playbill.com/shows"))
    shows = doc.css("a.color-white.bold")
    shows.map do |show|
      self.new(show.text.strip, "playbill.com"#{show.attr("href").strip}")
    end
  end

  def self.find(number)
    self.all[number-1]
  end

  def showdoc
    @showdoc = Nokogiri::HTML(open(self.url))
  end

  def theater
    @theater = self.showdoc.css("div.col-lg-6.col-md-9 p").text.gsub("\t","").gsub("map","").strip
  end

  def summary
    @summary = self.showdoc.css("div.col-lg-12.col-md-12.black-text p").text.strip
  end
end
