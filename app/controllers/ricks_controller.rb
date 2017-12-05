class RicksController < ApplicationController
	def index
		if params[:view] == "order"
			@ricks = Rick.order(:eyeballs)
		elsif params[:view] == "shuffle"
			@ricks = Rick.all.shuffle	
		else
			@ricks = Rick.all
		end
	end

	def new
	end

	def create
		eyeballs = params[:eyeballs]
		image = params[:image]
		rick = Rick.create(eyeballs: eyeballs, image: image, description: description)
		redirect_to "/ricks/#{rick.id}"
		flash[:success] = "Rick Created"
	end

	def show
		@rick = Rick.find_by(id: (params[:id]))
	end
	def edit
		@rick = Rick.find_by(id: (params[:id]))
	end
	def update
		rick = Rick.find_by(id: (params[:id]))
		eyeballs = params[:eyeballs]
		image = params[:image]
		description = params[:description]
		rick.update(eyeballs: eyeballs, image: image, description: description)
		redirect_to "/ricks/#{rick.id}"
		flash[:success] = "Rick Updated"

	end
	def destroy
		rick = Rick.find_by(id: (params[:id]))
		rick.destroy
		redirect_to "/ricks"

	end
	def search
		search_term = params[:search]
		@ricks = Rick.where("eyeballs LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
		render :index
	end
end
