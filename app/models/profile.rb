class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :ratings

	validates :name, presence: true
	validates :surname, allow_nil: true, allow_blank: true
end
