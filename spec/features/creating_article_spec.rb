require  'rails_helper'

describe "creatin article", type: :feature do
before do
  @user = User.create!(email: 'ejodlfj@gmail.com', password: 'elkfjrlkfjr')
  
  visit '/'
  fill_in "user_email", with: @user.email
  fill_in "user_password", with: @user.password
  click_button 'iniciar'
end 
    it "the user will create an article and redirect the article" do 
      # print page.html
      click_link "Escribir"
      fill_in 'article_title', with: 'Creting a blog' 
      #  find(:css, '#user_remember_me').set true
      click_button 'Create Article'
      expect(page).to have_content("Creting a blog")
  end
end 

