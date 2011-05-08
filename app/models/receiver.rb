class Receiver < ActiveRecord::Base
  has_and_belongs_to_many :messages
  validates :phone_number,  :presence => true
  validates :name,  :presence => true
  validates :breakfast_time, :lunch_time, :snack_time, :dinner_time, :presence => true
end
