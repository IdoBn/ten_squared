class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :user_id
      t.integer :conversation_id

      t.timestamps
    end
  end
end
