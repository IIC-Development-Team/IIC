class CreateUsrs < ActiveRecord::Migration[7.0]
  def change
    create_table :usrs do |t|
      t.string :browser
      t.string :os
      t.string :dev_type

      t.timestamps
    end
  end
end
