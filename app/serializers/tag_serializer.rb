class TagSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :user
  has_many :tags

end
