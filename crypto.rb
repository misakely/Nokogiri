require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_price

	vola = Nokogiri::HTML (open("https://coinmarketcap.com/all/views/all/"))

	vola.css('a.price').map do |x| x.text
		
	end
  	
end


def name_change

	nom = Nokogiri::HTML (open("https://coinmarketcap.com/all/views/all/"))
	nom.css('a.currency-name-container.link-secondary').map do |v| v.text
		
	end
end

relieur = name_change.zip(get_price).to_h 
puts relieur

