require 'rails_helper'

RSpec.describe 'the companies index' do
  it 'has an index of companies that hire turing grads' do
    visit '/companies'
  end

  it 'lists the name of the company on the index page' do
    company_1 = Company.create!(company_name: "BigTeckInc",
                                city: "here",
                                state: "there",
                                description: "stuff happens here",
                                website: "www.thestuffhere.com")
    visit '/companies'

    expect(page).to have_content(company_1.company_name)
    expect(page).to have_content(company_1.state)
  end

  it 'has a link to the companies show page' do
    company_1 = Company.create!(company_name: "BigTeckInc",
                                city: "here",
                                state: "there",
                                description: "stuff happens here",
                                website: "www.thestuffhere.com")
    visit '/companies'
    click_on "Learn more about #{company_1.company_name}"
    expect(current_path).to eq("/companies/#{company_1.id}")

  end
end
