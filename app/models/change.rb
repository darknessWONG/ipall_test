class Change < ActiveRecord::Base
  self.table_name = "Changes"
  belongs_to :employee
  belongs_to :ipadd
end
