require 'rails_helper'

feature "signing in" do 
	let(:user) {FactoryGirl.create(:user)}

	def fill_signin_fields
		fill_in "user[email]", with: user.email
		fill_in "user[password]", with: user.password
		click_button "Log in"
	end

	scenario "visiting the site to sign_in" do
		visit root_path
		first(:link, "Войти").click
		fill_signin_fields
		expect(page).to have_content("Вход в систему выполнен.")
	end


end