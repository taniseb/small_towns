User.delete_all

10.times do |n|
  user = User.create!(email: "test#{n}@test.com", password: '123456', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, cpf: Faker::Bank.account_number(digits: 11), role: "citizen", city_name: "Santo Rails" ,ibge_code: 123456)
  pd = PersonalDatum.create!(user: user, iptu: Faker::Boolean.boolean, scholar_attendancy: Faker::Boolean.boolean, health_information: Faker::Boolean.boolean, licence: Faker::Boolean.boolean, social_assistancy: Faker::Boolean.boolean, contract: Faker::Boolean.boolean, public_security: Faker::Boolean.boolean, traffic: Faker::Boolean.boolean, construction: Faker::Boolean.boolean)
  3.times do
    requisition = Requisition.create!(status:"Incomplete", user: user, personal_datum: pd)
    requisition_fields = RequisitionField.create!(requisition: requisition, field_name: ["iptu", "scholar_attendancy", "health_information", "licence", "social_assistancy", "contact", "public_security", "traffic", "construction"].sample, new_value: Faker::Boolean.boolean, excluded: false, justification: Faker::ChuckNorris.fact)
  end
end


