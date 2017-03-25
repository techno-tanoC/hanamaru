class Item < ApplicationRecord
  acts_as_taggable

  def build_hash
    {
      id: self.id,
      title: self.title,
      url: self.url,
      archived: self.archived,
      tags: self.tag_list,
      created_at: self.created_at,
      updated_at: self.updated_at
    }
  end
end
