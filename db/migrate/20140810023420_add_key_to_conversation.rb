class AddKeyToConversation < ActiveRecord::Migration
  def change
    add_column :conversations, :key, :string
  end
end
