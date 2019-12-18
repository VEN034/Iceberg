class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :description
      t.date :document_date
      t.string :document_currency
      t.decimal :document_amount
      t.date :shipment_date
      t.string :country_of_origin
      t.string :incoterms
      t.string :shipment_from
      t.string :port_of_loading
      t.string :port_of_discharge
      t.string :final_destination
      t.text :goods_description
      t.text :consignee
      t.text :shipper
      t.text :notify_party
      t.text :issuing_bank
      t.text :remarks
      t.references :exportlc, null: false, foreign_key: true

      t.timestamps
    end
  end
end
