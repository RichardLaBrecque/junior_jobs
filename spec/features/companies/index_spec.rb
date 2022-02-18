require 'rails_helper'

RSpec.describe 'the companies index' do
  it 'has an index of companies that hire turing grads' do
    visit '/companies'
  end
end
