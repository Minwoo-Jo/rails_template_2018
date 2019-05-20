FactoryBot.define do
  factory :book do
    title { Forgery('name').company_name }
    isbn { SecureRandom.uuid }
    user { FactoryBot.create(:user) }
  end
end
