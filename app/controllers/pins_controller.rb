class PinsController < ApplicationController
	puts "PinsController"
	before_action :find_pin, only: [:show, :edit, :update, :destroy, :upvote]

#Ações a serem feitas com um item: 


	def index
		if params[:search] != "" && params[:search] != nil
			@search = "%" + params[:search] +"%" 
			word = @search.downcase
			@pins = Pin.where("unaccent(LOWER(title)) ILIKE ? or unaccent(LOWER(description)) ILIKE ? or unaccent(LOWER(location)) ILIKE ?", word,word,word)
		else
			@pins = Pin.all.order("created_at DESC")
		end
	end

	def show
		@user = current_user
		if @user == nil
			@user = ""
		else
			@user = current_user.email
		end
	end

	def new
		@pin = current_user.pins.build
	end

	def create
		@pin = current_user.pins.build(pin_params)

		if @pin.save
			redirect_to @pin, notice: "Successfully created new Pin"
		else
			render 'new'
		end
	end

	def edit
	end

	def buy
	end

	def update
		if @pin.update(pin_params)
			redirect_to @pin, notice: "Pin updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@pin.destroy
		redirect_to root_path
	end
  
	private

	def pin_params;
		params.require(:pin).permit(:title, :description, :price, :location, :condition, :image)
	end

	def find_pin
		@pin = Pin.find(params[:id])
	end
	puts "PinsController end"
end
