require 'spec_helper'

describe "WelcomePages" do
  describe "GET welcome#index" do
    it 'should have the title "Home"' do
    	visit root_path
    	page.should have_selector('title',text:'Quottage - Home')
    end
  end

end
