class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :blogs_id, null: false
      t.string :name, null: false
      t.text :opinion, null: false

      t.timestamps
    end
  end
end
