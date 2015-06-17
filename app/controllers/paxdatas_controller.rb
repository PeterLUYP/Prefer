class PaxdatasController < ApplicationController
	def index
		data = Paxdata.select("Order_No, Pax_type, Pax_Gender, Tour_Code, Tour_Date").where("Pax_Gender = @gender", Tour_Date: @startDate..@endDate)

	end
	def show

	end



end
