class CreateWishes < ActiveRecord::Migration
  def self.up
    create_table :wishes do |t|
      t.string :name
      t.boolean :secret
      t.boolean :anonymous
      t.string :your_wish
      t.timestamps
    end
  end

  def self.down
    drop_table :wishes
  end
end
