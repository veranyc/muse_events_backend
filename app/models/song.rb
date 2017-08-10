class Song < ApplicationRecord
  belongs_to :artist
  has_many :setlists, through: :setlist_songs
end
