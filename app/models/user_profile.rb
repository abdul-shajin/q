class UserProfile < ActiveRecord::Base
  attr_accessible :name, :location
  belongs_to :user
end
