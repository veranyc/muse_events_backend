class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :city, :state, :username

  has_many :events
  has_many :artists, through: :events
  has_many :pictures, through: :events
  has_many :posts, through: :events
  has_many :setlists, through: :events
end
