# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  profile_image          :string(255)
#

require 'spec_helper'

describe User do

	#Relationship Tests
  it { should have_many(:quotes).dependent(:destroy)}
  it { should have_many(:authentications).dependent(:delete_all)} 
  it { should have_one(:user_profile).dependent(:destroy)} 

  #DB tests
  it { should have_db_column(:email).of_type(:string)}
  it { should have_db_column(:encrypted_password).of_type(:string)}
  it { should have_db_column(:reset_password_token).of_type(:string)}
  it { should have_db_column(:reset_password_sent_at).of_type(:datetime)}
  it { should have_db_column(:remember_created_at).of_type(:datetime)}
  it { should have_db_column(:sign_in_count).of_type(:integer)}
  it { should have_db_column(:current_sign_in_at).of_type(:datetime)}
  it { should have_db_column(:last_sign_in_at).of_type(:datetime)}
  it { should have_db_column(:current_sign_in_ip).of_type(:string)}
  it { should have_db_column(:last_sign_in_ip).of_type(:string)}
  it { should have_db_column(:created_at).of_type(:datetime)}
  it { should have_db_column(:updated_at).of_type(:datetime)}
  it { should have_db_column(:profile_image).of_type(:string)}

  #Mass assignment tests - shoulda
  it { should allow_mass_assignment_of(:email)}
  it { should allow_mass_assignment_of(:password)}
  it { should allow_mass_assignment_of(:password_confirmation)}
  it { should allow_mass_assignment_of(:remember_me)}


end
