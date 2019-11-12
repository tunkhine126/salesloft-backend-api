class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :title
end
