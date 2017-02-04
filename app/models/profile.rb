class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :ratings

	validates :name, presence: true
end
