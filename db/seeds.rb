puts "Start the seed"

puts "Deleting data"

CityHall.delete_all
User.delete_all
PersonalDatum.delete_all
Requisition.delete_all

puts "---------------------------"

c = CityHall.new(name: "Goiania", ibge_code: "159753")

c.save!

10.times do
  u = User.new(email: Faker::Internet.email , first_name: Faker::Name.first_name, last_name:Faker::Name.last_name,
    cpf: Faker::Number.leading_zero_number(digits: 11), password: "123456", password_confirmation: "123456",
    city_hall: c)

  u.save!

  5.times do
    p = PersonalDatum.new(datum_font: ["IPTU", "ITBI", "ISS", "Dados Escolares", "Dados de Saúde"].sample, datum_information: Faker::Lorem.sentence(word_count: 5), datum_access: ["Gestor", "Servidor", "Fornecedor"].sample, city_hall: c, user: u)

    p.save!
  end

  5.times do

    r = Requisition.new(status: ["pendente", "autorizada", "negado"].sample, field_name: ["IPTU", "ITBI", "ISS", "Dados Escolares", "Dados de Saúde"].sample, new_value: Faker::Lorem.sentence(word_count: 5), justification: Faker::Lorem.sentence(word_count: 5), excluded: [false, true].sample, user: u)

    r.save!

  end

end


puts "Finish the seed"


















