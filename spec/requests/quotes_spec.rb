require 'spec_helper'

describe "Quotes" do
  describe "GET /quotes" do
  	before do
  		@quote = FactoryGirl.create(:quote)
  	end
    it "should work quotes show path" do
      get quote_path(@quote)
      response.status.should be(200)
    end
  end
end
