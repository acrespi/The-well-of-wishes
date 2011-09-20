class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.float :amount
      t.string :code
      t.integer :wish_id
      t.timestamps
    end
  end

  def self.down
    drop_table :donations
  end
end
