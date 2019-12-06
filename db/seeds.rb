# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@names = ["Norberto", "Jules", "Joseph", "Tyrone", "Edmund", "Minh", "Ervin", "Genaro", "Lindsey", "Cruz", "Zackary", "Carson", "Jason", "Alden", "Stan", "Wilburn", "Cyrus", "Andre", "Rashad", "Noah", "Tim", "Bret", "Donn", "Gregorio", "Hassan", "Jay", "Jeff", "Cletus", "Jon", "Monty", "Foster", "Curtis", "Earle", "Quentin", "Franklin", "Carlo", "Rudolf", "Mathew", "Roosevelt", "Antione", "Claud", "Jacques", "Whitney", "Colby", "Gerardo", "Williams", "Sebastian", "Rueben", "Maynard", "Ben"]
@domains = ["gmail.com", "hotmail.com", "outlook.com", "hotmail.co.uk", "aol.com", "lewagon.com"]

@descriptions = ["Great bargain! No strings attached!", "The world's favourite debt-collectors!", "Cosa nostra ;)", "An interested party", "Free lunch!", "Money never sleeps..."]
@street_type = ["Carrer", "Pasatge", "Passeig", "Avinguda"]
@street_name = ["Aldana", "Alí Bei", "Almogàvers", "Anaïs Napoléon", "Aragó", "Aribau", "Arts", "Ausiàs Marc", "Bailèn", "Balmes", "Batlló", "Beatriu de Provença", "Bergara", "Bocabella", "Bofill", "Bosquet dels Encants", "Bruc", "Buenos Aires", "Plaça de Catalunya", "Calàbria", "Camps Elisis", "Canonge Cluffí", "Caputxins", "Carlit", "Cartagena", "Casanova", "Casp", "Catalunya", "Centelles", "Cèsar Mantinell", "Clotilde Cerdà", "Coll del Portell", "Comte Borrell", "Comte d'Urgell", "Concepció", "Consell de Cent", "Constança d'Aragó", "Còrsega", "Avinguda Diagonal", "Diagonal", "Diputació", "Doctor Ferrer i Cajigal", "Doctor Letamendi", "Doctor Robert", "Domingo", "Emerssenda de Carcassona", "Emma de Barcelona", "Enamorats", "Enric Granados", "Enriqueta Sèculi", "Entença", "Escoles", "Estació del Nord", "Flora Tristan", "Floridablanca", "Font", "Fontanella", "Gaiolà", "Gaudí", "Gaudí", "Girona", "Goya", "Gràcia", "Gran Via de les Corts Catalanes", "Henry Dunant", "Hispanitat", "Igualtat", "Indústria", "Indústria", "Jaume Perich", "Joan Brossa", "Joan Carles I", "Joan Casas", "Joan Miró", "Josep Tarradellas", "Laietana", "Albéniz", "Lepant", "Lina Òdena", "Llançà"]
@photos = ["https://res.cloudinary.com/kl3000/image/upload/v1575466342/44-Big-Short-Paramount_esvfo5.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575466273/bigshort0016_cveu2n.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575466161/f54fa898ecd8901cb8a95403025b9a32_mnioxz.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575466045/fotonoticia_20090916105917_640_iu8n7d.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575466001/5a4669d6b0bcd584188b74cc_nltnwz.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575465956/1_UMLuABJUsRK5BL3pT8sQRA_iltadq.png", "https://res.cloudinary.com/kl3000/image/upload/v1575462040/CR_13916-640x425_p9htm1.png", "https://res.cloudinary.com/kl3000/image/upload/v1575461983/62427-paramount_c5n3qb.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575461956/maxresdefault_a0lx2o.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575461944/14873d1471582534-joker-s-pile-money-test2_ujycgw.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575461927/1366_2000_lehfn8.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575461912/918e7a39b2d71bd85d3e26cf6b42a1ec_uwglur.jpg"]

def seed_loan_offers(n)
old_count = Offer.count
  p "#{old_count} existing offers"
  p "Seeding new offers"
  n.times do
    new_offer = Offer.new(amount: (100 * rand(1..500)),
      currency: "EUR",
      interest: rand(2..20),
      description: @descriptions[rand(0..(@descriptions.length))],
      bank_account: rand(100000000000..999999999999),
      address: "#{@street_type[rand(0..3)]} de #{@street_name[rand(0..(@street_name.length))]}",
      user_id: User.last.id,
      remote_photo_url: "#{@photos[rand(0..11)]}")
    if new_offer.valid?
      new_offer.save
      p Offer.last
      p "New Offer No. #{Offer.count}"
    else
      p new_offer.errors.messages
    end
  end
  p new_count = "Seeded #{Offer.count - old_count} Offers"
  p total_count = "#{Offer.count} Total Offers"
end

def seed_users(n)
  old_count = User.count
  p "#{old_count} existing users"
  # p "Destroying dependencies (offers)"
  # Offer.destroy_all
  # p "Destroying users"
  # User.destroy_all
  p "Seeding new users"
  n.times do
    new_user = User.new(email: "#{@names[rand(0...50)]}.#{@names[rand(0...50)]}_#{rand(50)}@#{@domains[rand(5)]}",
    password: "123456",
    first_name: @names[rand(0...50)],
    last_name: @names[rand(0...50)])
    if new_user.valid?
      new_user.save
      p User.last
      p "New User No. #{User.count}"
      seed_loan_offers(rand(0..3))
    else
      p new_user.errors.messages
    end
  end
  p new_count = "Seeded #{User.count - old_count} New Users"
  p total_count = "#{User.count} Total Users"
end

seed_users(10)
