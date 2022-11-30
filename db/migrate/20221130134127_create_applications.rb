class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :title
      t.string :author
      t.date :rd
      t.string :ca
      t.boolean :cs
      t.string :img

      t.timestamps
    end
  end
end
