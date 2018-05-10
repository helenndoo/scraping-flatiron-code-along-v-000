require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

  def get_page
    doc = Nokogiri::HTML(open(http://learn-co-curriculum.github.io/site-for-scraping/courses))
  end

  def get_courses
    get_page.css(".post")
  end
  
  def make_courses
    get_courses.each do |post|
      course = Course.new
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

end
