require  'rails_helper'

describe "show article", type: :feature do
  before do
    @user = User.create!(email: 'ejodlfj@gmail.com', password: 'elkfjrlkfjr')
    
    visit '/'
    fill_in "user_email", with: @user.email
    fill_in "user_password", with: @user.password
    click_button 'iniciar'
    end 

    it "show articles and print PDF" do 
      click_link "articulos"
      click_link "imprime pdf"

  end
end 