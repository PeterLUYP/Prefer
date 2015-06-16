class Group < ActiveRecord::Base
	self.table_name = "a03a3_group"
	belongs_to :regioncode
	has_many :tourorders
	has_many :paxdatas
	belongs_to :paxdata
end
