class SessionsController < ApplicationController
	def create
		@user = User.find(email: params[:email])
		current_user = User.create
	end


	def delete
	end
end
