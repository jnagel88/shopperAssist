class ItemsController < ApplicationController

	def index
		@items = Item.all
		@new_item = params[:new_item]
	end

	def create
	
	end

	def destroy
	
	end

	def toggle_state
	
	end


end
