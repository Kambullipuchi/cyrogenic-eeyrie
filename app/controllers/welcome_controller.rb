require 'platform-api'

class WelcomeController < ApplicationController
	def index
		heroku = PlatformAPI.connect_oauth('6b8979c5-ee85-4e5b-8f61-75c50e3ecac2')
		@details = heroku.app.info('cyrogenic-eeyrie')
		render :json => @details
	end
end
