class User < ActiveRecord::Base
	has_many :profiles
	has_many :ratings

	validates :email, presence: true, uniqueness: true
	validates :status, inclusion: { in: %w(approved disapproved pending), message: "%{value} is not a valid status" }

	scope :pending, ->  { where(status: 'pending') }
end
