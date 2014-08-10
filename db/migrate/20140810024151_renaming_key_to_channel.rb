class RenamingKeyToChannel < ActiveRecord::Migration
  def change
  	rename_column :conversations, :key, :channel
  end
end
