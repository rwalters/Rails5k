class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :body
end
