require 'rails_helper'

describe "Application" do
subject { page }
	describe "Menu" do
		before { visit root_path }
		it { should have_title('Img') }
		it { should have_content('ImgDictionary') }
		it { should have_selector('a', text: 'Зачем это приложение?') }
		it { should have_selector('a', text: 'Спросить/Дать совет') }
		it { should have_selector('a', text: 'Войти') }
		it { should have_selector('a', text: 'Зарегистрироваться') }
	end
end