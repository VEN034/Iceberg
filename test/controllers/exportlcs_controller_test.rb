require 'test_helper'

class ExportlcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exportlc = exportlcs(:one)
  end

  test "should get index" do
    get exportlcs_url
    assert_response :success
  end

  test "should get new" do
    get new_exportlc_url
    assert_response :success
  end

  test "should create exportlc" do
    assert_difference('Exportlc.count') do
      post exportlcs_url, params: { exportlc: { additional_conditions: @exportlc.additional_conditions, amount: @exportlc.amount, applicant: @exportlc.applicant, available_by: @exportlc.available_by, available_with: @exportlc.available_with, beneficiary: @exportlc.beneficiary, currency: @exportlc.currency, documents_required: @exportlc.documents_required, drawee: @exportlc.drawee, expiry_date: @exportlc.expiry_date, final_destination: @exportlc.final_destination, goods_description: @exportlc.goods_description, issue_date: @exportlc.issue_date, issuing_bank: @exportlc.issuing_bank, latest_shipment_date: @exportlc.latest_shipment_date, lc_number: @exportlc.lc_number, partial_shipment: @exportlc.partial_shipment, port_of_discharge: @exportlc.port_of_discharge, port_of_loading: @exportlc.port_of_loading, remarks: @exportlc.remarks, shipment_from: @exportlc.shipment_from, tenor: @exportlc.tenor, transhipment: @exportlc.transhipment } }
    end

    assert_redirected_to exportlc_url(Exportlc.last)
  end

  test "should show exportlc" do
    get exportlc_url(@exportlc)
    assert_response :success
  end

  test "should get edit" do
    get edit_exportlc_url(@exportlc)
    assert_response :success
  end

  test "should update exportlc" do
    patch exportlc_url(@exportlc), params: { exportlc: { additional_conditions: @exportlc.additional_conditions, amount: @exportlc.amount, applicant: @exportlc.applicant, available_by: @exportlc.available_by, available_with: @exportlc.available_with, beneficiary: @exportlc.beneficiary, currency: @exportlc.currency, documents_required: @exportlc.documents_required, drawee: @exportlc.drawee, expiry_date: @exportlc.expiry_date, final_destination: @exportlc.final_destination, goods_description: @exportlc.goods_description, issue_date: @exportlc.issue_date, issuing_bank: @exportlc.issuing_bank, latest_shipment_date: @exportlc.latest_shipment_date, lc_number: @exportlc.lc_number, partial_shipment: @exportlc.partial_shipment, port_of_discharge: @exportlc.port_of_discharge, port_of_loading: @exportlc.port_of_loading, remarks: @exportlc.remarks, shipment_from: @exportlc.shipment_from, tenor: @exportlc.tenor, transhipment: @exportlc.transhipment } }
    assert_redirected_to exportlc_url(@exportlc)
  end

  test "should destroy exportlc" do
    assert_difference('Exportlc.count', -1) do
      delete exportlc_url(@exportlc)
    end

    assert_redirected_to exportlcs_url
  end
end
