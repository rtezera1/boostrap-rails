class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :body, null: false 

      t.timestamps
    end
  end
end
