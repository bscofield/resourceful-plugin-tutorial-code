class EasyForumMigration < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.string :name

      t.timestamps
    end

    create_table :discussions do |t|
      t.integer :room_id
      t.string :name
      t.text :content
      t.string :poster

      t.timestamps
    end

    create_table :comments do |t|
      t.integer :discussion_id
      t.text :content
      t.string :poster

      t.timestamps
    end
  end
  
  def self.down
    drop_table :comments
    drop_table :discussions
    drop_table :rooms
  end
end