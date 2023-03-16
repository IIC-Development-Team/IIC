class AddAppsParams < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :size, :float
    add_column :applications, :app_type, :integer
  end
end
