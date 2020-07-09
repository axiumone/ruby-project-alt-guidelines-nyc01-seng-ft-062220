require 'open-uri'
require 'json'
require 'net/http'

class GetDealerInfo

    attr_accessor :search, :found_place_id
    # API_KEY = AIzaSyBVWDKrgX-t6V42WzCG7qwHTKCVY4OfIOM

    
    def local_search
        puts "**  Enter a car brand for a local dealership search.  **"
        input = gets.strip

        url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=#{input}&inputtype=textquery&fields=place_id&key=AIzaSyBVWDKrgX-t6V42WzCG7qwHTKCVY4OfIOM"
        # above gives you a place_id

            uri = URI.parse(url)
            response = Net::HTTP.get_response(uri)
            searching = response.body
            still_searching = JSON.parse(searching)
            still_searching.find do |ele|
               ele.select do |another_ele|
                    if another_ele.class == Array
                        another_ele.each do |more_ele|
                            found_place_id = more_ele["place_id"]
               
                        end
                    end 
                end
            end
        #below use store the place_id as a var and use it in the next string for the results

            new_url = "https://maps.googleapis.com/maps/api/place/details/json?place_id=#{found_place_id}&fields=name,rating,formatted_phone_number,website,formatted_address&key=AIzaSyBVWDKrgX-t6V42WzCG7qwHTKCVY4OfIOM"
            result = JSON.parse(new_url)
            puts result
    end





    # result = JSON.parse(new_url)

    # puts result
    # puts @@found_place_id
end