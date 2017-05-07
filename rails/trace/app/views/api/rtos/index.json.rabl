unless @rto.nil? #if !@state.nil?
object @rto
attributes :code, :vehicle_number, :address, :phone

child :state do
	attributes :name, :transport_code
end

child :locations do
	attributes :rto_id, :name
end

else
	node(:error) {"#{params[:vehicle_number]} not found"}
end