class Wiki < ApplicationRecord
	extend FriendlyId
	friendly_id :title, use: :slugged

	belongs_to :user

	validates :user_id, presence: true
end
