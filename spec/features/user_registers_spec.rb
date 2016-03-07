require 'rails_helper'

feature 'user registers an account successfully' do
    scenario 'successfully' do
        visit '/user/sign_up'
        fill_in "Username", :with => 'username'
        fill_in "Email", :with => 'persona@example'
        fill_in "Password", :with => 'password'
        click_button 'Sign up'
        
        expect(page).to have_content 'Welcome! You have signed up!'
        
        
    end
end