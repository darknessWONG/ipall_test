class Employee < ActiveRecord::Base
  has_many :ipadds
  has_many :changes
  validates :name, presence: true, length: {minimum: 3}
end
