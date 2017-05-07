unless @state.nil? #if !@state.nil?
object @state
attributes :name, :transport_code #, :total_rtos

child :rtos do
	attributes :code, :vehicle_number, :address, :phone
end

else
	node(:error) {"#{params[:name]} not found"}
end