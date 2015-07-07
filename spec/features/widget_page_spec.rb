require 'rails_helper'

RSpec.describe Widget, type: :feature, js: true do
  scenario 'viewing the widget index page' do
    create(:widget, name: 'Widget One')
    create_list(:widget, 10)
    visit '/widgets'
    expect(page).to have_content('Widget One')
  end
end
