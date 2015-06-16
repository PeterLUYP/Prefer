class Paxdata < ActiveRecord::Base
	self.table_name = "a05b01_paxdata"
	belongs_to :group
	has_many :groups
	belongs_to :tourorder
	has_many :tourorders
end
