class Song < ApplicationRecord
  belongs_to :setlist_songs
  has_many :setlist_songs
end
