class SetlistSerializer < ActiveModel::Serializer
  attributes :id, :event_id

  belongs_to :event
  has_many :setlist_songs
  has_many :songs, through: :setlist_songs
end
