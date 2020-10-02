puts "Start the seed"

puts "Deleting data"

CityHall.delete_all
User.delete_all
PersonalDatum.delete_all

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

u12.cpf = "888.555.666-07"

u12.password = "123456"

u12.password_confirmation = "123456"

u12.city_hall = c12

u12.save!


puts "Creating the first PersonalDatum"

pd12 = PersonalDatum.new

pd12.datum_font = "Secretaria de Obras e Infraestrutura"

pd12.datum_information = "Construção de um prédio de 12 andares"

pd12.datum_access = "Secretário Municipal e o Gestor do Departamento de Obras do Município"

pd12.city_hall = c12

pd12.user = u12

pd12.save!



pd37 = PersonalDatum.new

pd37.datum_font = "Secretaria de Saúde"

pd37.datum_information = "Construção de um prédio de 12 andares"

pd37.datum_access = "Secretário Municipal e o Gestor do Departamento de Obras do Município"

pd37.city_hall = c12

pd37.user = u12

pd37.save!


pd58 = PersonalDatum.new

pd58.datum_font = "Secretaria de Saúde"

pd58.datum_information = "Construção de um prédio de 12 andares"

pd58.datum_access = "Secretário Municipal e o Gestor do Departamento de Obras do Município"

pd58.city_hall = c12

pd58.user = u12

pd58.save!




puts "Creating the first Requisition"

rq12 = Requisition.new

rq12.status = "pendente"

rq12.field_name = "Regularização imobiliária pendente para os meus imóveis"

rq12.new_value = "Os imóveis em que sou proprietário estão com a Regularização Imobiliária em dia: impostos pagos e de acordo com a legislação do município"

rq12.justification = "Todos meus imóveis estão com os impostos quitados e com a documentação em conformidade com a lei municipal"

rq12.excluded = false

rq12.user = u12


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

u13.cpf = "697.412.632-03"

u13.password = "123456"

u13.password_confirmation = "123456"

u13.city_hall = c13

u13.save!

puts "Creating the second PersonalDatum"

pd13 = PersonalDatum.new

pd13.datum_font = "Secretaria de Educação"

pd13.datum_information = "Novo curso de Doutorado"

pd13.datum_access = "Reitor da Universidade Federal de Santa Rails"

pd13.city_hall = c13

pd13.user = u13

pd13.save!


puts "Creating the second Requisition"

rq13 = Requisition.new

rq13.status = "pendente"

rq13.field_name = "Regularização imobiliária pendente para os meus imóveis"

rq13.new_value = "Os imóveis em que sou proprietário estão com a Regularização Imobiliária em dia: impostos pagos e de acordo com a legislação do município"

rq13.justification = "Todos meus imóveis estão com os impostos quitados e com a documentação em conformidade com a lei municipal"

rq13.excluded = false

rq13.user = u13


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

u14.cpf = "498.527.632-05"

u14.password = "123456"

u14.password_confirmation = "123456"

u14.city_hall = c14

u14.save!

puts "Creating the third PersonalDatum"

pd14 = PersonalDatum.new

pd14.datum_font = "Secretaria de Cultura e Esportes"

pd14.datum_information = "Bolsa de esportes para prática de natação"

pd14.datum_access = "Acesso livre a todos os cidadãos"

pd14.city_hall = c14

pd14.user = u14

pd14.save!


puts "Creating the third Requisition"

rq14 = Requisition.new

rq14.status = "pendente"

rq14.field_name = "Regularização imobiliária pendente para os meus imóveis"

rq14.new_value = "Os imóveis em que sou proprietário estão com a Regularização Imobiliária em dia: impostos pagos e de acordo com a legislação do município"

rq14.justification = "Todos meus imóveis estão com os impostos quitados e com a documentação em conformidade com a lei municipal"

rq14.excluded = false

rq14.user = u14



puts "Finish the seed"


















