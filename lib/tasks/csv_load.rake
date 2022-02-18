require 'csv'

namespace :csv_load do
  desc "load transaction csv"
  task companies: :environment do
    CSV.foreach("db/data/companies.csv", headers: true) do |row|
      Company.create(row.to_h)
    end
    ActiveRecord::Base.connection.reset_pk_sequence!(companies)
  end
end
