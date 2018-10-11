require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_the_email_of_a_townhal_from_its_webpage(url_page)

	page = Nokogiri::HTML(open(url_page))	
	page.xpath('//body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text

end


def get_all_the_url_pages_of_val_doise_townhalls


	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

	page.css("a.lientxt").each do |link|
		
 		url_page = "http://annuaire-des-mairies.com" + link["href"][1..-1].to_s  # on ronvoie ici une novelle chaine pour le convertir ensuite en string
		
		ville_name = link.text
	
 		ville_email = get_the_email_of_a_townhal_from_its_webpage(url_page)
		
 		ville = {:nom_ville => ville_name, :email => ville_email}
		puts  ville
		#puts ville_email

	end

 end

 p get_all_the_url_pages_of_val_doise_townhalls
