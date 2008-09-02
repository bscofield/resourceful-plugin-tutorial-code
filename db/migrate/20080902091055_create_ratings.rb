class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.integer :rated_id
      t.string :rated_type
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
  end
end
