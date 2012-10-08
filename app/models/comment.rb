class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :content, :item_id
  validates_presence_of :item_id, :content
  belongs_to :item

end
