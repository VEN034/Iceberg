require "application_system_test_case"

class ExportlcsTest < ApplicationSystemTestCase
  setup do
    @exportlc = exportlcs(:one)
  end

  test "visiting the index" do
    visit exportlcs_url
    assert_selector "h1", text: "Exportlcs"
  end

  test "creating a Exportlc" do
    visit exportlcs_url
    click_on "New Exportlc"

    fill_in "Additional conditions", with: @exportlc.additional_conditions
    fill_in "Amount", with: @exportlc.amount
    fill_in "Applicant", with: @exportlc.applicant
    fill_in "Available by", with: @exportlc.available_by
    fill_in "Available with", with: @exportlc.available_with
    fill_in "Beneficiary", with: @exportlc.beneficiary
    fill_in "Currency", with: @exportlc.currency
    fill_in "Documents required", with: @exportlc.documents_required
    fill_in "Drawee", with: @exportlc.drawee
    fill_in "Expiry date", with: @exportlc.expiry_date
    fill_in "Final destination", with: @exportlc.final_destination
    fill_in "Goods description", with: @exportlc.goods_description
    fill_in "Issue date", with: @exportlc.issue_date
    fill_in "Issuing bank", with: @exportlc.issuing_bank
    fill_in "Latest shipment date", with: @exportlc.latest_shipment_date
    fill_in "Lc number", with: @exportlc.lc_number
    fill_in "Partial shipment", with: @exportlc.partial_shipment
    fill_in "Port of discharge", with: @exportlc.port_of_discharge
    fill_in "Port of loading", with: @exportlc.port_of_loading
    fill_in "Remarks", with: @exportlc.remarks
    fill_in "Shipment from", with: @exportlc.shipment_from
    fill_in "Tenor", with: @exportlc.tenor
    fill_in "Transhipment", with: @exportlc.transhipment
    click_on "Create Exportlc"

    assert_text "Exportlc was successfully created"
    click_on "Back"
  end

  test "updating a Exportlc" do
    visit exportlcs_url
    click_on "Edit", match: :first

    fill_in "Additional conditions", with: @exportlc.additional_conditions
    fill_in "Amount", with: @exportlc.amount
    fill_in "Applicant", with: @exportlc.applicant
    fill_in "Available by", with: @exportlc.available_by
    fill_in "Available with", with: @exportlc.available_with
    fill_in "Beneficiary", with: @exportlc.beneficiary
    fill_in "Currency", with: @exportlc.currency
    fill_in "Documents required", with: @exportlc.documents_required
    fill_in "Drawee", with: @exportlc.drawee
    fill_in "Expiry date", with: @exportlc.expiry_date
    fill_in "Final destination", with: @exportlc.final_destination
    fill_in "Goods description", with: @exportlc.goods_description
    fill_in "Issue date", with: @exportlc.issue_date
    fill_in "Issuing bank", with: @exportlc.issuing_bank
    fill_in "Latest shipment date", with: @exportlc.latest_shipment_date
    fill_in "Lc number", with: @exportlc.lc_number
    fill_in "Partial shipment", with: @exportlc.partial_shipment
    fill_in "Port of discharge", with: @exportlc.port_of_discharge
    fill_in "Port of loading", with: @exportlc.port_of_loading
    fill_in "Remarks", with: @exportlc.remarks
    fill_in "Shipment from", with: @exportlc.shipment_from
    fill_in "Tenor", with: @exportlc.tenor
    fill_in "Transhipment", with: @exportlc.transhipment
    click_on "Update Exportlc"

    assert_text "Exportlc was successfully updated"
    click_on "Back"
  end

  test "destroying a Exportlc" do
    visit exportlcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exportlc was successfully destroyed"
  end
end
