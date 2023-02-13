FactoryBot.define do
    factory :item do
      name { Faker::Job.key_skill}
      done { false }
      todo_id {nil}
    end
  end