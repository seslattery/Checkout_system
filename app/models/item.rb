class Item < ActiveRecord::Base
  attr_accessible :chemID, :name
  before_save { |item| item.chemID = chemID.downcase }
  validates :name, presence: true
  validates :chemID, presence: true
end
