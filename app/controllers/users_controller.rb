class UsersController < ApplicationController
	#before_filter :authenticate_user!

	def show
		@user = User.find(params[:id])
		@quotes = @user.quotes.paginate(page: params[:page],per_page:10)
	end
end
