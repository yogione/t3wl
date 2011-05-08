class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :msg_text
      t.string :category
      t.datetime :msg_time
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
