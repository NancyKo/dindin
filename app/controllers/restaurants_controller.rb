class RestaurantsController < ApplicationController 

	def index
		@restaurants = Restaurant.all
	end

	def new 
		@restaurant = Restaurant.new 
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