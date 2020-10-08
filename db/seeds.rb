puts "Start the seed"

puts "Deleting data"

CityHall.delete_all
User.delete_all
Requisition.delete_all
PersonalDatum.delete_all

puts "---------------------------"

c = CityHall.new(name: "Santo Rails", ibge_code: "159753")

c.save!
s = User.new(email:"admin@admin.com" , first_name: "Admin", last_name:"Admin",
    cpf: Faker::Number.leading_zero_number(digits: 11), password: "123456", password_confirmation: "123456",
    city_hall: c, datum_admin:true)
s.save!




10.times do
  u = User.new(email: Faker::Internet.email , first_name: ["João Victor", "Bruno", "Pedro", "Tabatha", "Milene", "Vinícius", "Vitor", "Isabela"].sample, last_name:["Miranda", "Cardoso", "Wiggers", "Tostes", "Mayer", "Ramires", "Antunes"].sample,
    cpf: Faker::Number.leading_zero_number(digits: 11), password: "123456", password_confirmation: "123456",
    city_hall: c)
  u.save!

  5.times do
    p = PersonalDatum.new(datum_font: ["IPTU", "ITBI", "ISS", "Dados Escolares", "Dados de Saúde"].sample, datum_information: ["somente informações financeiras", "seu nome completo", "RG e CPF", "Informações relativas ao desempenho"].sample, datum_access: ["Gestor", "Servidor", "Fornecedor", "Públicas no Sítio da Prefeitura", "Disponibilizadas a todos sob demanda"].sample, city_hall: c, user: u)
    p.save!
    r = Requisition.new(status: "pendente", field_name: ["IPTU", "ITBI", "ISS", "Dados Escolares", "Dados de Saúde"].sample, new_value: ["favor não disponibilizar a ninguém exceto ao gestor", "peço a mudança em meu nome, com a adição do sobrenome Silva por conta do meu casamento", "Peço a modificação do meu nome, com a exclusão do sobrenome Souza por conta do meu divórcio", "Meu nome está escrito errado. Favor excluir a última letra"].sample, justification: ["É meu direito ter acesso a tais informações", "O acesso está garantido pela LGPD", "A informação é minha e está apenas sobre a guarda da prefeitura", "Não gostaria de ter disseminadas minhas informações pessoais sem o meu conhecimento"].sample, excluded: false, user: u, personal_datum: p)
    r.save!
  end

end


puts "Finish the seed"


















