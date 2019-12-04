# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# @names = ["Norberto", "Jules", "Joseph", "Tyrone", "Edmund", "Minh", "Ervin", "Genaro", "Lindsey", "Cruz", "Zackary", "Carson", "Jason", "Alden", "Stan", "Wilburn", "Cyrus", "Andre", "Rashad", "Noah", "Tim", "Bret", "Donn", "Gregorio", "Hassan", "Jay", "Jeff", "Cletus", "Jon", "Monty", "Foster", "Curtis", "Earle", "Quentin", "Franklin", "Carlo", "Rudolf", "Mathew", "Roosevelt", "Antione", "Claud", "Jacques", "Whitney", "Colby", "Gerardo", "Williams", "Sebastian", "Rueben", "Maynard", "Ben"]

# def seed_users(n)
#   User.destroy_all
#   p "Destroying users"
#   p "Seeding users"
#   n.times do
#     new = User.create(email: "#{@names[rand(50)]}@gmail.com", first_name: "#{@names[rand(50)]}", last_name: "#{@names[rand(50)]}")
#     p "#{new.valid?}"
#   end
#   p "Seeded #{User.count} users"
# end

# seed_users(10)



def seed_loan_offers(n)
  puts "Destroying offers"
  Offer.destroy_all
  puts "Seeding offers"
  descriptions = ["Great bargain! No strings attached!", "The world's favourite debt-collectors!", "It'll be just cosa nostra ;)", "An interested party", "Free lunch!"]
  street_type = ["Carrer", "Pasatge", "Passeig", "Avinguda"]
  street_name = ["Aldana", "Alí Bei", "Almogàvers", "Anaïs Napoléon", "Aragó", "Aribau", "Arts", "Ausiàs Marc", "Bailèn", "Balmes", "Batlló", "Beatriu de Provença", "Bergara", "Bocabella", "Bofill", "Bosquet dels Encants", "Bruc", "Buenos Aires", "Plaça de Catalunya", "Calàbria", "Camps Elisis", "Canonge Cluffí", "Caputxins", "Carlit", "Cartagena", "Casanova", "Casp", "Catalunya", "Centelles", "Cèsar Mantinell", "Clotilde Cerdà", "Coll del Portell", "Comte Borrell", "Comte d'Urgell", "Concepció", "Consell de Cent", "Constança d'Aragó", "Còrsega", "Avinguda Diagonal", "Diagonal", "Diputació", "Doctor Ferrer i Cajigal", "Doctor Letamendi", "Doctor Robert", "Domingo", "Emerssenda de Carcassona", "Emma de Barcelona", "Enamorats", "Enric Granados", "Enriqueta Sèculi", "Entença", "Escoles", "Estació del Nord", "Flora Tristan", "Floridablanca", "Font", "Fontanella", "Gaiolà", "Gaudí", "Gaudí", "Girona", "Goya", "Gràcia", "Gran Via de les Corts Catalanes", "Henry Dunant", "Hispanitat", "Igualtat", "Indústria", "Indústria", "Jaume Perich", "Joan Brossa", "Joan Carles I", "Joan Casas", "Joan Miró", "Josep Tarradellas", "Laietana", "Albéniz", "Lepant", "Lina Òdena", "Llançà"]
  n.times do
    new = Offer.create(amount: rand(100..10_000),
      interest: rand(1..50),
      description: descriptions[rand(0..4)],
      bank_account: rand(100000000000..999999999999),
      address: "#{street_type[rand(0..3)]} de #{street_name[rand(0..(street_name.length))]}",
      user_id: User.last.id)
    p "#{new.valid?}"
  end
  p "Seeded #{Offer.count} offers"
end

seed_loan_offers(10)
