class SoupsController < ApplicationController
	before_action :fetch_soup, only: [:show, :toggle_featured]

	def index
		@soups = Soup.all

		respond_to do |format|
			format.html
			format.json { render json: @soups}
		end
	end

	def show
		respond_to do |format|
			format.html
			format.json {render json: @soup}
			format.xml	{render xml: @soup}
		end
		
	end

	def toggle_featured
		@soup.toggle!(:featured)
		flash[:notice] = "Successfully changed the featured flag"
		redirect_to(@soup)
	end

	def fetch_soup
		@soup = Soup.find(params[:id]) 
	end
end
