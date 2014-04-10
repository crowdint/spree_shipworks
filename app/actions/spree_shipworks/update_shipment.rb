module SpreeShipworks
  class UpdateShipment
    include Dsl

    def call(params)
      shipment = @order.shipments.first
      if shipment.try(:update_attributes, { :tracking => params['tracking'] })
        shipment.reload
        shipment.ship

        response do |r|
          r.element 'UpdateSuccess'
        end
      else
        error_response("UNPROCESSIBLE_ENTITY", "Could not update tracking information for Order #R#{params['order']}")
      end

    rescue ActiveRecord::RecordNotFound
      error_response("NOT_FOUND", "Unable to find an order with ID of 'R#{params['order']}'.")
    rescue => error
      error_response("INTERNAL_SERVER_ERROR", error.to_s)
    end

  end
end
