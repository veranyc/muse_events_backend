class PostSerializer < ActiveModel::Serializer
  attributes :id, :type, :link, :event_id

  belongs_to :event
end
