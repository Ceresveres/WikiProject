class Topic < ApplicationRecord
  belongs_to :wiki
  has_many :pages
end
