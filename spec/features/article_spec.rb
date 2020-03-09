require  'rails_helper'

describe "the user will initiate section", type: :feature do

  it "redirects to the user profile index after login" do 
    visit '/users/sign_in'
    find(:css, '#user_email').set 'a20160383@gmail.com'
    find(:css, '#user_password').set '123456'
    find(:css, '#user_remember_me').set true
    
    click_button 'iniciar'

    expect(page).to have_content(//)

  end
end
