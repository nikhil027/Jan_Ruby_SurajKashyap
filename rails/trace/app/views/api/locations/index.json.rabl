unless @location.nil? #if !@location.nil?
object @location
attributes  :name

child :rto do
	attributes :code, :vehicle_number, :address, :phone

		child :state do
			attributes :name
		end
end

else
	node(:error) {"#{params[:name]} not found"}
end