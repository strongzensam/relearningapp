class RicksController < ApplicationController
	def index
		@message = params[:message]
		@ricks = Rick.all
		@params = params[:wildcard]
	end

	def new
	end

	def create
		eyeballs = params[:eyeballs]
		image = params[:image]
		rick = Rick.create(eyeballs: eyeballs, image: image)
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
		rick.update(eyeballs: eyeballs, image: image)
		redirect_to "/ricks/#{rick.id}"
		flash[:success] = "Rick Updated"

	end
	def destroy
		rick = Rick.find_by(id: (params[:id]))
		rick.destroy
		redirect_to "/ricks"

	end
end
