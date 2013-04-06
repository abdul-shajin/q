# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  quote      :text
#  user_id    :integer
#  author     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Quote do
	before(:each) do
		@quote = FactoryGirl.build(:quote)
	end
  #Association Tests - shoulda	
  it {should belong_to(:user)}

  #Attr accessible tests - shoulda
  it { should allow_mass_assignment_of(:user_id)}
  it { should allow_mass_assignment_of(:quote)}
  it { should allow_mass_assignment_of(:author)}
  
  #DB tests - shoulda
  it { should have_db_column(:quote).of_type(:text)}
  it { should have_db_column(:user_id).of_type(:integer)}
  it { should have_db_column(:author).of_type(:string)}
  it { should have_db_column(:created_at).of_type(:datetime)}
  it { should have_db_column(:updated_at).of_type(:datetime)}
  #Contaxt type tests
	it "should have a user" do
		@quote.user.should be_valid
	end
	it "should respond to user" do
		@quote.should respond_to(:user)
  end


end
