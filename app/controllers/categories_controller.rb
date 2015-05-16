class CategoriesController < ApplicationController
	
	before_action :fetch_category, only: [:update, :edit, :show, :destroy]

	def index
		@categories = Category.all
	end
	
	def show
		respond_to do |format|
			format.html
			format.json { render json: @category }
			format.xml 	{ render xml: @category }
		end
	end

	def new
	end

	def update
	end
	
	def edit
	end

	def destroy
	end

	private
	def fetch_category
		@category = Category.find(params[:id])
	end


end
