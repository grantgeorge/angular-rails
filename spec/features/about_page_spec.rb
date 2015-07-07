require 'rails_helper'

RSpec.describe Widget, type: :feature, js: true do
  scenario 'view' do
    visit '/about'
    expect(page).to have_content('This is the about view.')
  end
end
