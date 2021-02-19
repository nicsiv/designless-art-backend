class UserSerializer < ActiveModel::Serializer
  attributes :id
  
  has_many :easels
  
end
