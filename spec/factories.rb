FactoryBot.define do
  factory(:state) do
    state_park {Faker::Hipster.word}
  end
  factory(:national) do
    national_park {Faker::Name.name}
    state {Faker::Hipster.word}
  end

end