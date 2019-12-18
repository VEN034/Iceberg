require 'test_helper'

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get documents_url
    assert_response :success
  end

  test "should get new" do
    get new_document_url
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post documents_url, params: { document: { consignee: @document.consignee, country_of_origin: @document.country_of_origin, description: @document.description, document_amount: @document.document_amount, document_currency: @document.document_currency, document_date: @document.document_date, exportlc_id: @document.exportlc_id, final_destination: @document.final_destination, goods_description: @document.goods_description, incoterms: @document.incoterms, issuing_bank: @document.issuing_bank, notify_party: @document.notify_party, port_of_discharge: @document.port_of_discharge, port_of_loading: @document.port_of_loading, remarks: @document.remarks, shipment_date: @document.shipment_date, shipment_from: @document.shipment_from, shipper: @document.shipper } }
    end

    assert_redirected_to document_url(Document.last)
  end

  test "should show document" do
    get document_url(@document)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_url(@document)
    assert_response :success
  end

  test "should update document" do
    patch document_url(@document), params: { document: { consignee: @document.consignee, country_of_origin: @document.country_of_origin, description: @document.description, document_amount: @document.document_amount, document_currency: @document.document_currency, document_date: @document.document_date, exportlc_id: @document.exportlc_id, final_destination: @document.final_destination, goods_description: @document.goods_description, incoterms: @document.incoterms, issuing_bank: @document.issuing_bank, notify_party: @document.notify_party, port_of_discharge: @document.port_of_discharge, port_of_loading: @document.port_of_loading, remarks: @document.remarks, shipment_date: @document.shipment_date, shipment_from: @document.shipment_from, shipper: @document.shipper } }
    assert_redirected_to document_url(@document)
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete document_url(@document)
    end

    assert_redirected_to documents_url
  end
end
