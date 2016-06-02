class UsersController < ApplicationController
	def show
@user = User.find(params[:id])
#binding.pry
end
  def new
  end
end
