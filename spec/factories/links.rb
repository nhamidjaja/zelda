FactoryGirl.define do
  factory :link do
    vanity_url "MyString"
destination_url "MyString"

    factory :invalid_link do
      vanity_url ''
    end
  end

end
