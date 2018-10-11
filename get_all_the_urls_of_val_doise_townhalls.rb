require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc_1 = Nokogiri::HTML (open("http://annuaire-des-mairies.com/val-d-oise.html"))

# page = Nokogiri::HTML(open(PAGE_URL))
# links = page.css("a")
# puts links.length   # => 6
# puts links[0].text   # => Click here
# puts links[0]["href"] # => http://www.google.com

link = doc_1.css("a.lientxt")
i = 0
for i in 0..185
	puts link[i] ["href"]
end
