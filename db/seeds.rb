# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"


FieldType.create(
    title: "Heart rate"
)

100.times do
    patient_status = %w[Inquiry Onboarding Active Churned].sample
    new_patient = Patient.create(
        first_name: Faker::Name.first_name,
        middle_name: Faker::Name.middle_name,
        last_name: Faker::Name.last_name,
        address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr,
        zip_code: Faker::Address.zip_code[0,5],
        date_of_birth: Faker::Date.between(from: "1950-01-01", to: "2005-01-01"),
        status: patient_status
    )

    new_field = Field.create(
        field_type_id: 1,
        patient_id: new_patient.id,
        content: rand(40..99)
    )

end