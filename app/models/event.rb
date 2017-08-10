class Event < ApplicationRecord
  belongs_to :users
  has_many :posts
  has_many :pictures
end
