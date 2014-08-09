class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :auth_token
      t.string :name
      t.string :phone_number

      t.timestamps
    end
    add_index :users, :auth_token
  end
end
