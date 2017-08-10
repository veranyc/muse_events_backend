class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :link

  has_many :songs
  has_many :events
end
