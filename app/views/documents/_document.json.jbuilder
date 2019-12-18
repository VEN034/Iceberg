json.extract! document, :id, :description, :document_date, :document_currency, :document_amount, :shipment_date, :country_of_origin, :incoterms, :shipment_from, :port_of_loading, :port_of_discharge, :final_destination, :goods_description, :consignee, :shipper, :notify_party, :issuing_bank, :remarks, :exportlc_id, :created_at, :updated_at
json.url document_url(document, format: :json)
