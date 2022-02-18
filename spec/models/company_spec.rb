require 'rails_helper'

RSpec.describe Company do
  describe "validations" do
    it {should validate_presence_of(:company_name)}
    it {should validate_presence_of(:website)}
  end
end
