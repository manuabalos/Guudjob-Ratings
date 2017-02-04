class Rating < ActiveRecord::Base
	belongs_to :profile
	belongs_to :user

	before_save :repeat_profile
	before_save :rated_yourself

	def get_error_message
		error_msg = ""
    	self.errors.full_messages.each do |msg|
      		if error_msg != ""
        		error_msg << "<br>"
      		end
      		error_msg << msg
    	end
    	error_msg
	end

	private
		def repeat_profile
			errors.add :base, 'You have already rated this profile before.' if Rating.where('user_id = ? AND profile_id = ?', self.user_id, self.profile_id).present?
		end

		def rated_yourself
			profile = Profile.find self.profile_id
			errors.add :base, 'You cannot rate yourself.' if profile.id == self.user_id
		end
end
