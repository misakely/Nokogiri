require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_mail_deputes(url_page)

	page = Nokogiri::HTML(open(url_page))
	page.xpath('/html/body/div[3]/div/div/div/section[2]/div/div/div/article/div[4]/section/dl/dd[2]/a').text

end


def get_all_depute


	page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))

	page.css(".col3 li a").each do |link|
		
 		url_page = "http://www2.assemblee-nationale.fr/" + link["href"].to_s  # on ronvoie ici une novelle chaine pour le convertir ensuite en string
		
		nom_depute = link.text
	
 		contact =  get_mail_deputes(url_page)
		
 		a_propos = {:name => nom_depute, :email => contact}
 		
		puts  a_propos
		

	end

 end

 p get_all_depute
