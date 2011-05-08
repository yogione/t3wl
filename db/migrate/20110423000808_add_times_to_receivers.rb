class AddTimesToReceivers < ActiveRecord::Migration
  def self.up
    add_column :receivers, :time_zone, :string
    add_column :receivers, :breakfast_time, :string
    add_column :receivers, :lunch_time, :string
    add_column :receivers, :snack_time, :string
    add_column :receivers, :dinner_time, :string
  end

  def self.down
    remove_column :receivers, :dinner_time
    remove_column :receivers, :snack_time
    remove_column :receivers, :lunch_time
    remove_column :receivers, :breakfast_time
    remove_column :receivers, :time_zone
  end
end
