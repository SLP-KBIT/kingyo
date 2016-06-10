class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :account
      t.text :mail_address
      t.text :password
      t.boolean :is_admin

      t.timestamps null: false
    end
  end
end
