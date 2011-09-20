class Wish < ActiveRecord::Base

  has_many :donations
  validates :your_wish, :presence => true
end
