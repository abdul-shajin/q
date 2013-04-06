require 'spec_helper'

describe QuotesController do
  describe "GET 'show'" do
  	before do
  		@quote = FactoryGirl.create(:quote)
  	end
    it "returns http success on root" do
      visit quote_path(@quote)
      response.should be_success
    end
  end
end
