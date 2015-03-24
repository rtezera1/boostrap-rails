class Addblogid < ActiveRecord::Migration
  def change
    remove_column :comments, :blogs_id, :integer
    add_reference :comments, :blog, index: true
  end
end
