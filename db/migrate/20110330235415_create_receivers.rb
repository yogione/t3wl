class CreateReceivers < ActiveRecord::Migration
  def self.up
    create_table :receivers do |t|
      t.string :name
      t.integer :phone_number
      t.string :description
      t.string :email
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :receivers
  end
end
