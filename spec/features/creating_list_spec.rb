require  'rails_helper'

describe "creatin list", type: :feature do
before do
  @user = User.create!(email: 'ejodlfj@gmail.com', password: 'elkfjrlkfjr')
  
  visit '/'
  fill_in "user_email", with: @user.email
  fill_in "user_password", with: @user.password
  click_button 'iniciar'
end 
  it "the user creates a list and redirects it in the name given" do 
    click_link "listas"
    click_link "Nueva lista"

    fill_in 'list_title', with: 'new list' 
    fill_in 'list_color', with: '#000000' 

    click_button 'guardar'
    expect(page).to have_content("new list")
    # print page.html
  end
end 