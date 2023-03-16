class Application < ApplicationRecord
  require 'csv'

  #Delete all data from database to avoid
  #Problems with IDs
  Application.delete_all

  #Fill database from CSV file
  CSV.foreach('apps.csv', headers: true) do |row|
    Application.create(row.to_h)
  end
end
