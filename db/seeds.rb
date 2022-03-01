Role.destroy_all
Audition.destroy_all

15.times do
	Role.create(character_name: Faker::Movies::HowToTrainYourDragon.character)
end

30.times {
	Audition.create(
		actor: Faker::Name.name,
		location: ["NY", "SF", "Denver", "Seattle"].sample, # This will just take a random string from the array
		phone: Faker::PhoneNumber.phone_number, # Find anothe method...this just returns 3 numbers as a string
		hired: [true, false].sample,
		role_id: Role.pluck(:id).sample # This will create a role ID without creating an instance
	)
}
