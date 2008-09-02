class CreateDiscussions < ActiveRecord::Migration
  def self.up
    create_table :discussions do |t|
      t.integer :room_id
      t.string :name
      t.text :content
      t.string :poster

      t.timestamps
    end
  end

  def self.down
    drop_table :discussions
  end
end
