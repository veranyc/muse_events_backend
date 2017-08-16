class EventSerializer < ActiveModel::Serializer
  attributes :id, :artist_id, :venue, :city, :state, :country, :notes, :date, :user_id

  belongs_to :user
  has_many :setlists
  has_many :setlist_songs, through: :setlists
  has_many :posts
  has_many :pictures
end
