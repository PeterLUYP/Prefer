class Paxdata < ActiveRecord::Base
	self.table_name = "a05b01_paxdata"
	belongs_to :group
	has_many :groups
	belongs_to :tourorder
	has_many :tourorders

	def self.dashboard

		data = Paxdata.select("Order_No, Pax_type, Pax_Gender, Tour_Code, Tour_Date").where("Pax_Gender = '女'")

		data.map{|d|[Group.find(d.Order_No).Region_Code, d.total]};
	end


end
