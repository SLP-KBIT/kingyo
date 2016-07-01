class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :title
      t.integer :author_id
      t.text :content

      t.timestamps null: false
    end
  end
end
