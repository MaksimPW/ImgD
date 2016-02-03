require 'rails_helper'

describe "Abouts" do
subject { page }
	describe "Index" do
		before { visit about_path }
		it { should have_title('Img') }
		it { should have_content('ImgDictionary') }
		it { should have_selector('a', text: 'Войти') }
		it { should have_selector('a', text: 'Зарегистрироваться') }
	end
end