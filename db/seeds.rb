# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		

# require 'ostruct'

url =  "https://api.foursquare.com/v2/venues/search?ll=40.705489,-74.012972&client_id=#{ENV["FOURSQUARE_CLIENT_ID"]}&client_secret=#{ENV["FOURSQUARE_CLIENT_SECRET"]}&v=20141024&&query=coffee"

result = JSON.parse(HTTParty.get(url).body); nil

venues = result["response"]["venues"]; nil

Venue.create(venues.map do |v|
		{ 
			name: v["name"],
			telephone: v["contact"]["formattedPhone"] || "",
			address: v["location"]["formattedAddress"],
			description: v["categories"].map { |category| category["name"] }.join(", ")
		}
		
	end)
