require 'platform-api'

class WelcomeController < ApplicationController
	def index
		# data.chand@gmail.com => 6b8979c5-ee85-4e5b-8f61-75c50e3ecac2
		# data.chand@outlook.com => 9aea4314-77d9-437a-a2c4-557711cc9a23
		heroku = PlatformAPI.connect_oauth('6b8979c5-ee85-4e5b-8f61-75c50e3ecac2')
		outlook = PlatformAPI.connect_oauth('9aea4314-77d9-437a-a2c4-557711cc9a23')
		@details = heroku.app.info('cyrogenic-eeyrie')
		@list = heroku.app.list()
		@list2 = outlook.app.list()
		@dynos = heroku.dyno.list('cyrogenic-eeyrie')
		render :json => [@list, @list2]
	end
end
