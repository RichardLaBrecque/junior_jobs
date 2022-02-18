require 'rails_helper'

RSpec.describe 'the company show page' do
  it 'has a show page' do
    company_1 = Company.create!(company_name: "BigTeckInc",
                                city: "here",
                                state: "there",
                                description: "stuff happens here",
                                website: "www.thestuffhere.com")
    visit "/companies/#{company_1.id}"
  end

  it 'lists a companies attribues on the show page' do
    company_1 = Company.create!(company_name: "BigTeckInc",
                                city: "here",
                                state: "there",
                                description: "stuff happens here",
                                website: "www.thestuffhere.com")
    visit "/companies/#{company_1.id}"
    expect(page).to have_content(company_1.company_name)
    expect(page).to have_content(company_1.city)
    expect(page).to have_content(company_1.state)
    expect(page).to have_content(company_1.description)
    expect(page).to have_content(company_1.website)
    expect(page).to have_content(company_1.industry)
  end
end
