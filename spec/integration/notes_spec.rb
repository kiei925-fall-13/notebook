require 'spec_helper'

feature 'User can' do
  scenario 'add a note', :js => true do
    visit '/notes'
    within("#new_note") do
      fill_in 'note_content', :with => 'Rails Ajax rocks!'
    end
    find('#note_content').native.send_keys(:return)
    expect(page).to have_content 'Rails Ajax rocks!'
  end
end
