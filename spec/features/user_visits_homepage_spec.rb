require 'rails_help'

feature 'user visits hompage' do
scenario 'successfully' do
    visit root_path
    
    expect(page).to have_css 'h1'
    end
end