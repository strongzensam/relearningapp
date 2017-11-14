class PagesController < ApplicationController
	
	def index
		@message = params[:message]
		@ricks = Rick.all

	end

	def about
		@datetime = Time.zone.now.to_datetime
		@wrecked = ["burp","fart","nutterbutter"]
	end

end
