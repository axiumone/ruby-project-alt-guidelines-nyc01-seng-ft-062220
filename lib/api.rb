require 'open-uri'



# API_KEY = AIzaSyBVWDKrgX-t6V42WzCG7qwHTKCVY4OfIOM

input = gets.strip
search = input

url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=#{search}&inputtype=textquery&fields=place_id&key=AIzaSyBVWDKrgX-t6V42WzCG7qwHTKCVY4OfIOM"
 #above gives you a place_id

 #below use store the place_id as a var and use it in the next string for the results

url = "https://maps.googleapis.com/maps/api/place/details/json?place_id=ChIJ8UBhwmZFwokRQyxUJXv2IyA&fields=name,rating,formatted_phone_number,website,formatted_address&key=AIzaSyBVWDKrgX-t6V42WzCG7qwHTKCVY4OfIOM"

uri = URI.parse(url)
uri.open.string

formatted_address = address
name = name
rating 
formatted_phone_number
website