class Regioncode < ActiveRecord::Base
	self.table_name = "a03a3_regioncode"
	has_many :groups
end