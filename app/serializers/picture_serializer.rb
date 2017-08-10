class PictureSerializer < ActiveModel::Serializer
  attributes :id, :title

  belongs_to :event
  has_many :setlist_songs
  has_many :songs, through: :setlist_songs
end
