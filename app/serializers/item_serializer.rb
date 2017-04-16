class ItemSerializer < ActiveModel::Serializer
  attributes %w(id title url archived tags created_at updated_at)

  def tags
    object.tag_list
  end
end
