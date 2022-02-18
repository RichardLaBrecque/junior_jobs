class Company < ApplicationRecord
  validates :company_name, presence: true
  validates :website, presence: true
end
