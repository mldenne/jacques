class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :api_token

  has_many :notes
end
