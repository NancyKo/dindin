class RestaurantsController < ApplicationController 

	def index
		@restaurants = Restaurant.all
		@restaurant = Restaurant.new

		# url =  "https://api.foursquare.com/v2/venues/search?ll=40.705489,-74.012972&client_id=#{ENV["FOURSQUARE_CLIENT_ID"]}&client_secret=#{ENV["FOURSQUARE_CLIENT_SECRET"]}&v=20141024&&query=coffee"

  	# result = JSON.parse(HTTParty.get(url).body)

  	# venues = result["response"]["venues"]
	end

	def show 

	end

	def create 
	end

	def edit
	end

	def update 
	end

	def destroy
	end 

end 