module API
	class AppsController < ApplicationController

		def index
			render :json => ["hello"]
		end

	end
end
