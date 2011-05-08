class Message < ActiveRecord::Base
  has_and_belongs_to_many :receivers
  CATEGORY = ['Breakfast','Lunch','Snack','Dinner']


  BREAKFAST = [['6:00 AM','6:00 AM'],['6:30 AM', '6:30 AM'],['7:00 AM', '7:00 AM'],
      ['7:30 AM','7:30 AM'], ['8:00 AM', '8:00 AM'],  ['8:30 AM', '8:30 AM'], ['9:00 AM', '9:00 AM']]
                     
  LUNCH = [['11:00 AM','11:00 AM'],['11:30 AM','11:30 AM'],['12:00 NOON', '12:00 NOON'],
    ['12:30 PM', '12:30 PM'],['1:00 PM', '1:00 PM'],['1:30 PM','1:30 PM'], ['2:00 PM', '2:00 PM']]
                     
  SNACKS = [['2:00 PM','2:00 PM'],['2:30 PM', '2:30 PM'],['3:00 PM', '3:00 PM'], ['3:30 PM', '3:30 PM'],
    ['4:00 PM', '4:00 PM'],['4:30 PM', '4:30 PM'], ['5:00 PM', '5:00 PM']]
                     
  DINNER = [['5:00 PM','5:00 PM'],['5:30 PM', '5:30 PM'],['6:00 PM', '6:00 PM'],
    ['6:30 PM', '6:30 PM'], ['7:00 PM', '7:00 PM'],['7:30 PM', '7:30 PM'], ['8:00 PM', '8:00 PM']]


  def breakfast
    return Message::CATEGORY[0]
  end

  def lunch
    return Message::CATEGORY[1]
  end

  def snack
    return Message::CATEGORY[2]
  end
  def dinner
    return Message::CATEGORY[3]
  end
end
