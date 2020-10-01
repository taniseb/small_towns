puts "Start the seed"

puts "Deleting data"

CityHall.delete_all
User.delete_all
PersonalDatum.delete_all

# 10.times do |n|
#   user = User.create!(email: "test#{n}@test.com", password: '123456', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, cpf: Faker::Bank.account_number(digits: 11), role: "citizen", city_name: "Santo Rails" ,ibge_code: 123456)
#   pd = PersonalDatum.create!(user: user, iptu: Faker::Boolean.boolean, scholar_attendancy: Faker::Boolean.boolean, health_information: Faker::Boolean.boolean, licence: Faker::Boolean.boolean, social_assistancy: Faker::Boolean.boolean, contract: Faker::Boolean.boolean, public_security: Faker::Boolean.boolean, traffic: Faker::Boolean.boolean, construction: Faker::Boolean.boolean)
#   3.times do
#     requisition = Requisition.create!(status:"Incomplete", user: user, personal_datum: pd)
#     requisition_fields = RequisitionField.create!(requisition: requisition, field_name: ["iptu", "scholar_attendancy", "health_information", "licence", "social_assistancy", "contact", "public_security", "traffic", "construction"].sample, new_value: Faker::Boolean.boolean, excluded: false, justification: Faker::ChuckNorris.fact)
#   end
# end

puts "Creating the first Requisition"

rq12 = Requisition.new

rq12.status = "pendente"

rq12.field_name = "Regularização imobiliária pendente para os meus imóveis"

rq12.new_value = "Os imóveis em que sou proprietário estão com a Regularização Imobiliária em dia: impostos pagos e de acordo com a legislação do município"

rq12.justification = "Todos meus imóveis estão com os impostos quitados e com a documentação em conformidade com a lei municipal"

rq12.excluded = false









puts "Creating the first CityHall"

c12 = CityHall.new

c12.name = "Goiania"

c12.ibge_code = "123456789"

c12.save!

puts "Creating the first User"

u12 = User.new

u12.email = "dinossauro@gmail.com"

u12.first_name = "Dino"

u12.last_name = "Sauro"

u12.password = "123456"

u12.password_confirmation = "123456"

u12.city_hall = c12

u12.save!

puts "Creating the first PersonalDatum"

pd12 = PersonalDatum.new

pd12.datum_font = "Secretaria de Obras e Infraestrutura"

pd12.datum_information = "Construção de um prédio de 12 andares"

pd12.datum_access = "Acesso concedido somente ao proprietário"

pd12.city_hall = c12

pd12.user = u12

pd12.save!



puts "Creating the second CityHall"

c13 = CityHall.new

c13.name = "Belo Horizonte"

c13.ibge_code = "98756123"

c13.save!

puts "Creating the second User"

u13 = User.new

u13.email = "tiranossauro@gmail.com"

u13.first_name = "Tiranossauro"

u13.last_name = "Rex"

u13.password = "123456"

u13.password_confirmation = "123456"

u13.city_hall = c13

u13.save!

puts "Creating the second PersonalDatum"

pd13 = PersonalDatum.new

pd13.datum_font = "Secretaria de Educação"

pd13.datum_information = "Novo curso de Doutorado"

pd13.datum_access = "Doutorado em matemática"

pd13.city_hall = c13

pd13.user = u13

pd13.save!


puts "Creating the third CityHall"

c14 = CityHall.new

c14.name = "Rio de Janeiro"

c14.ibge_code = "555666888"

c14.save!

puts "Creating the third User"

u14 = User.new

u14.email = "passaro@gmail.com"

u14.first_name = "Passaro"

u14.last_name = "Aguia"

u14.password = "123456"

u14.password_confirmation = "123456"

u14.city_hall = c14

u14.save!

puts "Creating the third PersonalDatum"

pd14 = PersonalDatum.new

pd14.datum_font = "Secretaria de Cultura e Esportes"

pd14.datum_information = "Novo ginásio de esportes"

pd14.datum_access = "Volei"

pd14.city_hall = c14

pd14.user = u14

pd14.save!



puts "Finish the seed"


















