FactoryBot.define do
  factory :task do
    title { "MyString" }
    notes { "MyText" }
    complete { false }
    priority { "" }
    list { nil }
  end
end
