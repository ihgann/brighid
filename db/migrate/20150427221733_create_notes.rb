class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.integer :class_id
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
