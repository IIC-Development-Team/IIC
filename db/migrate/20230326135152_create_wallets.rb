class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets do |t|
      t.string :coin_ico
      t.string :wallet_qr
      t.string :wallet_txt

      t.timestamps
    end
  end
end
