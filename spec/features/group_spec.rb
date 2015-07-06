require 'rails_helper'

RSpec.describe Group, type: :feature, js: true do
  scenario 'view' do
    Group.create([
      { name: 'Group One' },
      { name: 'Snip Salon Software' },
      { name: 'GloboChem' },
      { name: 'TechCorp' },
    ])
    visit '#/groups'
    expect(page).to have_content('Group One')
  end
end
