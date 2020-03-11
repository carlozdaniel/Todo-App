require  'rails_helper'

describe "log in", type: :feature do
before do
  @user = User.create!(email: 'ejodlfj@gmail.com', password: 'elkfjrlkfjr')
  
  visit '/'
  fill_in "user_email", with: @user.email
  fill_in "user_password", with: @user.password
  click_button 'iniciar'
end 
  it "after seeing logged in we close the session" do 
    click_link "Cerrar Sesión"
    
    expect(page).to have_content("Iniciar sesion")
    # print page.html
  end
end 