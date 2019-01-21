class Wiki < ApplicationRecord
	extend FriendlyId
	friendly_id :title, use: :slugged

	belongs_to :user
	has_many :pages, dependent: :delete_all
	has_many :topics, dependent: :delete_all

	validates :user_id, presence: true
end
