class PostSerializer < ActiveModel::Serializer
  attributes :id, :type, :link

  belongs_to :event
end
