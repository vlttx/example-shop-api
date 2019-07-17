class SessionsController < ApplicationController
	def create
		@user = User.find_by(email: params[:user][:email])

		if @user && @user.authenticate(params[:user][:password])
			render json: @user
		else 
			render json: {
				error: "Invalid credentials",
				# details: @user.errors.full_messages
				# could be used for error rendering in React
			}, status: :unauthorized
		end
	end


	def delete
	end
end
