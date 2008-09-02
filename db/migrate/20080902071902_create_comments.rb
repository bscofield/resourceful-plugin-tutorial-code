class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :discussion_id
      t.text :content
      t.string :poster

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
