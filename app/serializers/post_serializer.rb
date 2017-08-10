class PostSerializer < ActiveModel::Serializer
  attributes :id, :name, :link

  belongs_to :event
end
