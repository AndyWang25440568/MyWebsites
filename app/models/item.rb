class Item < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :comments
end
