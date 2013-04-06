require 'spec_helper'

describe UsersController do
  describe "GET 'show'" do
  	before do
  		@user = FactoryGirl.create(:user)
  	end
    it "returns http success on root" do
      visit user_path(@user)
      response.should be_success
    end
  end
end
