require "faker"

27.times do
    Conan.create(
        character: Faker::JapaneseMedia::Conan.character,
        gadget: Faker::JapaneseMedia::Conan.gadget,
        vehicle: Faker::JapaneseMedia::Conan.vehicle
    )
end