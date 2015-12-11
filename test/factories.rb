
FactoryGirl.define do
	factory :user do	
		sequence :email do |n|
		 	"b.obrien#{n}@me.com"
		 end
		password '12345678'
		password_confirmation '12345678'
	end

	factory :tour do
		association :user
		name "go go go"
		description "it's fun"
		start_location "123 Sesame Street, New York, NY, USA"
		finish_location "456 Zoom Avenue, Los Angeles, CA, USA"
	end

	factory :comment do
		association :user
		association :tour
		message "hula hoop"
		rating '5_star'
	end

end