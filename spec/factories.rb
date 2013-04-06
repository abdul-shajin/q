FactoryGirl.define do
	
	sequence(:email) {|n| "person-#{n}@example.com"}

	factory :user do
      email
      password 'password'
      password_confirmation {|u| u.password }
    end

    factory :quote do
    	quote		"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at."
    	author 'Ashok Mastan'
      user
    end

end