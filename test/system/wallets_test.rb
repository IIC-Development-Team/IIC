require "application_system_test_case"

class WalletsTest < ApplicationSystemTestCase
  setup do
    @wallet = wallets(:one)
  end

  test "visiting the index" do
    visit wallets_url
    assert_selector "h1", text: "Wallets"
  end

  test "should create wallet" do
    visit wallets_url
    click_on "New wallet"

    fill_in "Coin ico", with: @wallet.coin_ico
    fill_in "Wallet qr", with: @wallet.wallet_qr
    fill_in "Wallet txt", with: @wallet.wallet_txt
    click_on "Create Wallet"

    assert_text "Wallet was successfully created"
    click_on "Back"
  end

  test "should update Wallet" do
    visit wallet_url(@wallet)
    click_on "Edit this wallet", match: :first

    fill_in "Coin ico", with: @wallet.coin_ico
    fill_in "Wallet qr", with: @wallet.wallet_qr
    fill_in "Wallet txt", with: @wallet.wallet_txt
    click_on "Update Wallet"

    assert_text "Wallet was successfully updated"
    click_on "Back"
  end

  test "should destroy Wallet" do
    visit wallet_url(@wallet)
    click_on "Destroy this wallet", match: :first

    assert_text "Wallet was successfully destroyed"
  end
end
