require 'rails_helper'

feature 'Words sign_in' do

	let(:user) {FactoryGirl.create(:user)}

	def log_in
		visit root_path
		first(:link, "Войти").click
		fill_in "user[email]", with: user.email
		fill_in "user[password]", with: user.password
		click_button "Log in"
	end


  scenario 'have_content "Создать"' do
    log_in
    expect(page).to have_content('Создать новое слово')
  end

  scenario 'have_content "Изображение"' do
    log_in
    expect(page).to have_content('Изображение')
  end

  scenario 'have_content "Описание"' do
    log_in
    expect(page).to have_content('Описание')
  end
end