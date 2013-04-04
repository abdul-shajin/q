require 'spec_helper'

describe WelcomeController do

  describe "GET 'index'" do
    it "returns http success on root" do
      get 'index'
      response.should be_success
    end
  end

end
