class Item < ActiveRecord::Base
  attr_accessible :chemID, :name, :returned
  before_save { |item| item.chemID = chemID.downcase }
  validates :name, presence: true
  validates :chemID, presence: true
end
#http://limitless-harbor-5322.herokuapp.com/
##B70101