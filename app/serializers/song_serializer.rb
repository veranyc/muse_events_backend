class SongSerializer < ActiveModel::Serializer
  attributes :id, :setlist_id

  belongs_to :artist
  has_many :setlists, through: :setlist_songs
end
