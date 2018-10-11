require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
# Fetch and parse HTML document
doc = Nokogiri::HTML(open('https://openclassrooms.com/fr/courses/2091901-protegez-vous-efficacement-contre-les-failles-web/2873202-protegez-les-donnees'))

# puts "### Search for nodes by css"

# doc.css('html.js.supports.no-touchevents.cssfilters').each do |link|
#   puts link.content
# end



puts "### Search for nodes by xpath"

doc.xpath('//*[@id="r-2769674"]').each do |link|
  puts link.content
end

# puts "### Or mix and match."

# doc.search('nav ul.menu li a', '//article//h2').each do |link|
#   puts link.content
# end