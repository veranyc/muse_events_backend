class SetlistSongSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :setlist_id

  belongs_to :setlist
end
