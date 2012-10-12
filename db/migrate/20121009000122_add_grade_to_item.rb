class AddGradeToItem < ActiveRecord::Migration
  def change
    add_column :comments, :grade, :integer
  end
end
