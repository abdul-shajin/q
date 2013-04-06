require 'spec_helper'

describe UserProfile do
  
  #Association tests - shoulda
  it { should belong_to(:user)}

  #Mass Assignment - shoulda
  it { should allow_mass_assignment_of(:name)}
  it { should allow_mass_assignment_of(:location)}

  #DB tests
  it { should have_db_column(:name).of_type(:string)}
  it { should have_db_column(:location).of_type(:string)}  
end
