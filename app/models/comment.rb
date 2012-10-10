class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :content, :item_id,:grade
  validates_presence_of :item_id, :content,:grade
  belongs_to :item

end
