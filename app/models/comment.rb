class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :content, :item_id

  belongs_to :item

end
