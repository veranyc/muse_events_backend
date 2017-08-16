class Event < ApplicationRecord
  belongs_to :user
  has_many :setlist
  has_many :setlist_songs, through: :setlists
  has_many :posts
  has_many :pictures
end
