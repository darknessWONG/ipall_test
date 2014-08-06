class Ipadd < ActiveRecord::Base
  belongs_to :employee
  has_many :changes
end
