class RatingsController < ApplicationController

	def create
		@rating = Rating.new rating_params
		@rating.user_id = current_user.id

		if @rating.save
			flash[:notice] = "The rating was saved successfully."
			redirect_to @rating
		else
			flash[:error] = @rating.get_error_message
			render :new
		end
	end

	private
	def rating_params
		params.require(:rating).permit(:user_id, :profile_id, :rate)
	end

end
