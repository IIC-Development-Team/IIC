class CreateUserApps < ActiveRecord::Migration[7.0]
  def change
    create_table :user_apps do |t|
      t.string :title
      t.string :author
      t.date :rd
      t.string :ca
      t.boolean :cs
      t.string :img
      t.float :size
      t.integer :app_type

      t.timestamps
    end
  end
end
