require 'rails_helper'

RSpec.feature "landing page" do 
  before(:each) do
    visit '/'
  end

  scenario "Landing page has hero-images" do
    expect(page).to have_css('.hero-image-landing-page')
  end

  scenario "Clicking on hero-images-sneakers redirects correctly" do
    click_on 'hero-image-sneakers'
    expect(page).to have_current_path('/sneakers')
  end

    scenario "Clicking on hero-images-apparels redirects correctly" do
    click_on 'hero-image-apparels'
    expect(page).to have_current_path('/apparels')
  end
  
end
