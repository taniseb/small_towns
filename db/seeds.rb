puts "Start the seed"

puts "Deleting data"

CityHall.delete_all
User.delete_all
PersonalDatum.delete_all
Requisition.delete_all

puts "--------------------------------------------"

puts "First"

puts "--------------------------------------------"

puts "Creating the first CityHall"

c12 = CityHall.new

c12.name = "Goiania"

c12.ibge_code = "123456789"

c12.save!


puts "Creating the first User"

u12 = User.new

u12.email = "hugoee@gmail.com"

u12.first_name = "Hugo"

u12.last_name = "Santos"

u12.cpf = "888.555.666-07"

u12.password = "123456"

u12.password_confirmation = "123456"

u12.city_hall = c12

u12.save!


puts "Creating the first PersonalDatum"

pd12 = PersonalDatum.new

pd12.datum_font = "IPTU"

pd12.datum_information = "Proprietário de 25 imóveis urbanos neste município, referência outubro de 2020"

pd12.datum_access = "Gestora da Secretaria Municipal de Obras"

pd12.city_hall = c12

pd12.user = u12

pd12.save!



pd37 = PersonalDatum.new

pd37.datum_font = "ITBI"

pd37.datum_information = "Realizou transferência da propriedade de 5 casas e 11 prédios, em setembro de 2020"

pd37.datum_access = "Gestora da Secretaria de Patrimônio do Município"

pd37.city_hall = c12

pd37.user = u12

pd37.save!


pd58 = PersonalDatum.new

pd58.datum_font = "ISS"

pd58.datum_information = "Contribuiu com o pagamento de R$ 3.500.000,00 (três Milhões e Quinhentos Mil Reais), para o tributo municipal ISS"

pd58.datum_access = "Gestora da Secretaria de Fazenda do Município"

pd58.city_hall = c12

pd58.user = u12

pd58.save!


puts "Creating the first Requisitions"

rq12 = Requisition.new

rq12.field_name = "IPTU"

rq12.new_value = "Solicito atualizar a quantidade de imóveis em que sou proprietário. Sou proprietário de 14 imóveis urbanos neste município, e não 25 ; referência outubro de 2020."

rq12.justification = "A quantidade errada de imóveis pode implicar cálculo incorreto para o valor do IPTU."

rq12.status = "Pendente"

rq12.excluded = false

rq12.user = u12

rq12.save!


rq13 = Requisition.new

rq13.status = "Pendente"

rq13.field_name = "ITBI"

rq13.new_value = "Realizou transferência de propriedade de 4 casas e 6 prédios, e não 5 casas e 11 prédios; em setembro de 2020."

rq13.justification = "A quantidade errada de transferências pode implicar cálculo incorreto para o valor do ITBI."

rq13.excluded = false

rq13.user = u12

rq13.save!


rq14 = Requisition.new

rq14.status = "Pendente"

rq14.field_name = "ISS"

rq14.new_value = "Contribui com o pagamento de ISS no valor de quatro milhöes de reais, e não três milhôes."

rq14.justification = "O registro incorreto do valor de ISS contribuído pode implicar em irregularidades na minha declaração de imposto de renda."

rq14.excluded = false

rq14.user = u12

rq14.save!



puts "-------------------------------------------------------------------"

puts "Second"

puts "-------------------------------------------------------------------"

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

pd13.datum_font = "Dados Escolares"

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

puts "-------------------------------------------------------------------"

puts "Third"

puts "-------------------------------------------------------------------"


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

pd14.datum_font = "Dados de Saúde"

pd14.datum_information = "Solicitação de remédios de alto valor para doença específica e rara."

pd14.datum_access = "Gestora da Secretaria de Saúde."

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

puts "________________________________________________________________________"

puts "Finish the seed"


















