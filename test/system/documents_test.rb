require "application_system_test_case"

class DocumentsTest < ApplicationSystemTestCase
  setup do
    @document = documents(:one)
  end

  test "visiting the index" do
    visit documents_url
    assert_selector "h1", text: "Documents"
  end

  test "creating a Document" do
    visit documents_url
    click_on "New Document"

    fill_in "Consignee", with: @document.consignee
    fill_in "Country of origin", with: @document.country_of_origin
    fill_in "Description", with: @document.description
    fill_in "Document amount", with: @document.document_amount
    fill_in "Document currency", with: @document.document_currency
    fill_in "Document date", with: @document.document_date
    fill_in "Exportlc", with: @document.exportlc_id
    fill_in "Final destination", with: @document.final_destination
    fill_in "Goods description", with: @document.goods_description
    fill_in "Incoterms", with: @document.incoterms
    fill_in "Issuing bank", with: @document.issuing_bank
    fill_in "Notify party", with: @document.notify_party
    fill_in "Port of discharge", with: @document.port_of_discharge
    fill_in "Port of loading", with: @document.port_of_loading
    fill_in "Remarks", with: @document.remarks
    fill_in "Shipment date", with: @document.shipment_date
    fill_in "Shipment from", with: @document.shipment_from
    fill_in "Shipper", with: @document.shipper
    click_on "Create Document"

    assert_text "Document was successfully created"
    click_on "Back"
  end

  test "updating a Document" do
    visit documents_url
    click_on "Edit", match: :first

    fill_in "Consignee", with: @document.consignee
    fill_in "Country of origin", with: @document.country_of_origin
    fill_in "Description", with: @document.description
    fill_in "Document amount", with: @document.document_amount
    fill_in "Document currency", with: @document.document_currency
    fill_in "Document date", with: @document.document_date
    fill_in "Exportlc", with: @document.exportlc_id
    fill_in "Final destination", with: @document.final_destination
    fill_in "Goods description", with: @document.goods_description
    fill_in "Incoterms", with: @document.incoterms
    fill_in "Issuing bank", with: @document.issuing_bank
    fill_in "Notify party", with: @document.notify_party
    fill_in "Port of discharge", with: @document.port_of_discharge
    fill_in "Port of loading", with: @document.port_of_loading
    fill_in "Remarks", with: @document.remarks
    fill_in "Shipment date", with: @document.shipment_date
    fill_in "Shipment from", with: @document.shipment_from
    fill_in "Shipper", with: @document.shipper
    click_on "Update Document"

    assert_text "Document was successfully updated"
    click_on "Back"
  end

  test "destroying a Document" do
    visit documents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Document was successfully destroyed"
  end
end
