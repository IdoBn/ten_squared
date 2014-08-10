class Conversation < ActiveRecord::Base
	has_many :participants
	has_many :users, through: :participants

	validates :name, presence: true
end
