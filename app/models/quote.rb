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

class Quote < ActiveRecord::Base
  attr_accessible :user_id,:quote,:author
  belongs_to :user
  default_scope order: 'quotes.created_at DESC'
end
