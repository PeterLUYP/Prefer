class Tourorder < ActiveRecord::Base
	self.table_name = "a05b01_tourorder"
	belongs_to :group
	belongs_to :paxdata
	has_many :paxdatas
end