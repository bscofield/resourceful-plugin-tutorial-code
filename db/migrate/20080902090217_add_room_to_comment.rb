class AddRoomToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :room_id, :integer
  end

  def self.down
    remove_column :comments, :room_id
  end
end
