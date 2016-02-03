require 'rails_helper'

describe "Words" do
subject { page }
	describe "Index" do
		before { visit about_path }
		it { should have_title('Img') }
		it { should have_content('Словарь') }
		it { should have_content('Создать новое слово') }
		it { should have_content('Изображение') }
	end
end


