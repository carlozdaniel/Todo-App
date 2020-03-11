require  'rails_helper'

describe "edit profile", type: :feature do
before do
  @user = User.create!(email: 'test@gmail.com', password: '654321')
  
  visit '/'
  fill_in "user_email", with: @user.email
  fill_in "user_password", with: @user.password
  click_button 'iniciar'
end 
    it "the user will create an article and redirect the article" do 
      click_link "Edita mis datos"
      fill_in 'user_email', with: @user.email 
      fill_in 'user_name', with: 'name the user' 
      fill_in 'user_user_description', with: 'programdor' 
      fill_in 'user_password', with: '123456' 
      fill_in 'user_password_confirmation', with: '123456'
      fill_in 'user_current_password', with: '654321'

      click_button 'actualizar'
      
      expect(page).to have_content("Mi Perfil")
  end
end 

