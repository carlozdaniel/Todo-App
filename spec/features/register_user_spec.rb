require  'rails_helper'

describe "sing up", type: :feature do

  it "redirects to the user profile index after resgistration" do 
    visit '/users/sign_up'  
    # print page.html
    fill_in 'Nombre', with: 'carlos daniel hernandez rodriguez' 
    fill_in 'descripción', with: 'programador' 
    fill_in 'Email', with: 'acarlos@gmail.com' 
    fill_in 'Password', with: '123456' 
    fill_in 'Confirma password', with: '123456' 

    click_button 'registrate'

    expect(page).to have_content("carlos daniel hernandez rodriguez")

  end
end
