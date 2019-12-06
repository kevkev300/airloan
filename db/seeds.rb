# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star, Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# @names = ["Norberto", "Jules", "Joseph", "Tyrone", "Edmund", "Minh", "Ervin", "Genaro", "Lindsey", "Cruz", "Zackary", "Carson", "Jason", "Alden", "Stan", "Wilburn", "Cyrus", "Andre", "Rashad", "Noah", "Tim", "Bret", "Donn", "Gregorio", "Hassan", "Jay", "Jeff", "Cletus", "Jon", "Monty", "Foster", "Curtis", "Earle", "Quentin", "Franklin", "Carlo", "Rudolf", "Mathew", "Roosevelt", "Antoine", "Claud", "Jacques", "Whitney", "Colby", "Gerardo", "Williams", "Sebastian", "Rueben", "Maynard", "Ben"]
# @initials = ("A".."Z").to_a
@domains = ["gmail.com", "hotmail.com", "outlook.com", "hotmail.co.uk", "aol.com", "lewagon.com"]

@descriptions = ["Offering a great bargain! And no strings attached!", "A no brainer deal! Can sort all your money problems just like that :D", "Providing the lowest interest in the area!"]
# @street_type = ["Carrer", "Pasatge", "Passeig", "Avinguda"]
# @street_name = ["Aldana", "Alí Bei", "Almogàvers", "Anaïs Napoléon", "Aragó", "Aribau", "Arts", "Ausiàs Marc", "Bailèn", "Balmes", "Batlló", "Beatriu de Provença", "Bergara", "Bocabella", "Bofill", "Bosquet dels Encants", "Bruc", "Buenos Aires", "Plaça de Catalunya", "Calàbria", "Camps Elisis", "Canonge Cluffí", "Caputxins", "Carlit", "Cartagena", "Casanova", "Casp", "Catalunya", "Centelles", "Cèsar Mantinell", "Clotilde Cerdà", "Coll del Portell", "Comte Borrell", "Comte d'Urgell", "Concepció", "Consell de Cent", "Constança d'Aragó", "Còrsega", "Avinguda Diagonal", "Diagonal", "Diputació", "Doctor Ferrer i Cajigal", "Doctor Letamendi", "Doctor Robert", "Domingo", "Emerssenda de Carcassona", "Emma de Barcelona", "Enamorats", "Enric Granados", "Enriqueta Sèculi", "Entença", "Escoles", "Estació del Nord", "Flora Tristan", "Floridablanca", "Font", "Fontanella", "Gaiolà", "Gaudí", "Gaudí", "Girona", "Goya", "Gràcia", "Gran Via de les Corts Catalanes", "Henry Dunant", "Hispanitat", "Igualtat", "Indústria", "Indústria", "Jaume Perich", "Joan Brossa", "Joan Carles I", "Joan Casas", "Joan Miró", "Josep Tarradellas", "Laietana", "Albéniz", "Lepant", "Lina Òdena", "Llançà"]
# @photos = ["https://res.cloudinary.com/kl3000/image/upload/v1575466342/44-Big-Short-Paramount_esvfo5.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575466273/bigshort0016_cveu2n.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575466161/f54fa898ecd8901cb8a95403025b9a32_mnioxz.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575466045/fotonoticia_20090916105917_640_iu8n7d.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575466001/5a4669d6b0bcd584188b74cc_nltnwz.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575465956/1_UMLuABJUsRK5BL3pT8sQRA_iltadq.png", "https://res.cloudinary.com/kl3000/image/upload/v1575462040/CR_13916-640x425_p9htm1.png", "https://res.cloudinary.com/kl3000/image/upload/v1575461983/62427-paramount_c5n3qb.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575461956/maxresdefault_a0lx2o.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575461944/14873d1471582534-joker-s-pile-money-test2_ujycgw.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575461927/1366_2000_lehfn8.jpg", "https://res.cloudinary.com/kl3000/image/upload/v1575461912/918e7a39b2d71bd85d3e26cf6b42a1ec_uwglur.jpg"]

@users = [
  {
    first_name: "Arcangelo",
    last_name: "Corelli",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630624/user_profile_images/photo-1463453091185-61582044d556_xholgb.jpg",
    address: "Fusignano, Italy"
  },
  {
    first_name: "Walter",
    last_name: "White",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630648/user_profile_images/photo-1495078065017-564723e7e3e7_nc4ry4.jpg",
    address: "Albuquerque, New Mexico"
  },
  {
    first_name: "Luigi",
    last_name: "Boccherini",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630864/user_profile_images/photo-1501196354995-cbb51c65aaea_krbcn3.jpg",
    address: "Lucca, Italy"
  },
  {
    first_name: "Zaynab",
    last_name: "Ashraf",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630864/user_profile_images/photo-1501196354995-cbb51c65aaea_krbcn3.jpg",
    address: "Tunis, Tunisia"
  },
  {
    first_name: "Jean",
    last_name: "D'Arc",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630874/user_profile_images/photo-1520813792240-56fc4a3765a7_dgl3eu.jpg",
    address: "Orleans, France"
  },
  {
    first_name: "Ellen",
    last_name: "DeGeneres",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630893/user_profile_images/photo-1490195117352-aa267f47f2d9_k26t3a.jpg",
    address: "New York, US"
  },
  {
    first_name: "Stuart",
    last_name: "Little",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630902/user_profile_images/photo-1500048993953-d23a436266cf_r5ekoq.jpg",
    address: "Canary Wharf, London"
  },
  {
    first_name: "Alexander",
    last_name: "Hollmann",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630948/user_profile_images/T02NE0241-UPM08BB4G-e03b376ab89c-512_ud9mzo.jpg",
    address: "Frankfurt, Germany"
  },
  {
    first_name: "Alex Stefan",
    last_name: "Sima",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630972/user_profile_images/T02NE0241-UP7UZUUTC-285ae1d2dce5-512_o0pvwi.jpg",
    address: "Clot, Barcelona"
  },
  {
    first_name: "Andrés",
    last_name: "Ramos",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575630984/user_profile_images/T02NE0241-UPLK9PZ2R-381c9c64d4d1-512_vx01ze.jpg",
    address: "Verdaguer, Barcelona"
  },
  {
    first_name: "Angelica",
    last_name: "De Moffarts",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631032/user_profile_images/T02NE0241-UP96TAG67-9eb3437bec64-512_tlonji.jpg",
    address: "Ghent, Belgium"
  },
  {
    first_name: "Avalon",
    last_name: "Van Der Horst",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631328/user_profile_images/T02NE0241-U8314BQ82-01c1dcf7eca3-512_jmkpyi.jpg",
    address: "Koninklijk Paleis, Amsterdam"
  },
  {
    first_name: "Ben",
    last_name: "Toosey",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631375/user_profile_images/T02NE0241-UPL535Y6Q-cc4875c7306c-512_ht297e.jpg",
    address: "Buckinghamshire, UK"
  },
  {
    first_name: "Camille",
    last_name: "Bonnet",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631397/user_profile_images/T02NE0241-U7NAVD676-9fbc275d84b3-512_vuaiva.jpg",
    address: "France"
  },
  {
    first_name: "Cassandre",
    last_name: "Houzé De L'Aulnoit",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631397/user_profile_images/T02NE0241-U7NAVD676-9fbc275d84b3-512_vuaiva.jpg",
    address: "Lille, France"
  },
  {
    first_name: "Christos",
    last_name: "Kaltaveridis",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631481/user_profile_images/T02NE0241-UPL897MJ8-e50ac5a48da9-512_iop3oz.png",
    address: "Cardiff, UK"
  },
  {
    first_name: "Claire",
    last_name: "Dinsart",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631499/user_profile_images/T02NE0241-UHBDC0J3C-a773b355ed2c-512_dp7k1c.png",
    address: "Bordeaux, France"
  },
  {
    first_name: "Claire",
    last_name: "Gautier",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631519/user_profile_images/T02NE0241-UA0DUPP0E-025a8aae0543-512_mkeo2u.jpg",
    address: "Brest, France"
  },
  {
    first_name: "Edward",
    last_name: "Jacobs",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631539/user_profile_images/T02NE0241-UPE6G9J49-d22621b165bd-512_fhpewx.jpg",
    address: "Kansas, US"
  },
  {
    first_name: "Elena",
    last_name: "Perez",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631636/user_profile_images/T02NE0241-UPNSBGT0W-c173a85e1293-512_jmfmsw.jpg",
    address: "Placa Reial, Barcelona"
  },
  {
    first_name: "Elise",
    last_name: "Navarro",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631659/user_profile_images/T02NE0241-UPL53A45S-d67170dcd996-512_l5rdiy.jpg",
    address: "Chicago, US"
  },
  {
    first_name: "Ellyn",
    last_name: "Bouscasse",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631683/user_profile_images/T02NE0241-U4598RZGF-b92abaa9d3bf-512_osyidq.jpg",
    address: "Carrer d'En Grassot, Barcelona"
  },
  {
    first_name: "Gabriel",
    last_name: "Constantin Ursache",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631767/user_profile_images/T02NE0241-UPL6PFTA8-77844c4dfb36-512_vcs2sh.png",
    address: "Bucharest, Romania"
  },
  {
    first_name: "Gijs",
    last_name: "Maks",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631794/user_profile_images/T02NE0241-UPL4NQ8DS-2b931133ac94-512_c7a661.jpg",
    address: "Amsterdam, Netherlands"
  },
  {
    first_name: "Gus",
    last_name: "De Vita",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631854/user_profile_images/T02NE0241-U0CAK1T88-81f976504e1c-512_b8tobm.jpg",
    address: "Carrer d'en Grassot, Barcelona"
  },
  {
    first_name: "Hamza",
    last_name: "M'Barek",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631890/user_profile_images/T02NE0241-UPNR72TP0-ae9ed4ff472c-512_lfwhae.jpg",
    address: "Paris, France"
  },
  {
    first_name: "Iñaki",
    last_name: "Mediavilla",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575631965/user_profile_images/T02NE0241-UP7R4UMTL-a8948787a53c-512_pa33xz.png",
    address: "Bilbao, Spain"
  },
  {
    first_name: "Isac",
    last_name: "Giuk Kim",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632170/user_profile_images/T02NE0241-UPLK2131N-e1b9f6081978-512_bcsftl.png",
    address: "Quito, Ecuador"
  },
  {
    first_name: "Ivana",
    last_name: "Piljic",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632262/user_profile_images/T02NE0241-UPE8T7BMF-d221df9b7ce2-512_j6wwur.jpg",
    address: "Zadar, Croatia"
  },
  {
    first_name: "Malou",
    last_name: "Allertz",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632348/user_profile_images/T02NE0241-U281EAB8D-6bd41d7b2018-512_lugths.png",
    address: "Leiden, Netherlands"
  },
  {
    first_name: "Miguel Ángel",
    last_name: "Marfil Rubio",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632434/user_profile_images/T02NE0241-UPE7M99U1-32151dfec812-512_xfqpoh.jpg",
    address: "Placa Catalunya, Barcelona"
  },
  {
    first_name: "Mireia",
    last_name: "Palmero",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632531/user_profile_images/T02NE0241-UPNEUMKCP-2be77693c771-512_c0wedv.jpg",
    address: "Barceloneta, Barcelona"
  },
  {
    first_name: "Nicholas",
    last_name: "Jardine",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632608/user_profile_images/T02NE0241-UP7T3D858-a61e60b3df53-512_qiihnf.jpg",
    address: "Johannesburg, South Africa"
  },
  {
    first_name: "Nico",
    last_name: "Standup",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632684/user_profile_images/T02NE0241-UKPKXKN3V-63e484c7b1df-512_hke0lb.jpg",
    address: "Arc de Triomf, Barcelona"
  },
  {
    first_name: "Ollie",
    last_name: "Senduk",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632761/user_profile_images/T02NE0241-U2965HDS9-855f9fbf052e-512_qytqoi.jpg",
    address: "Rijksmuseum, Amsterdam"
  },
  {
    first_name: "Pablo",
    last_name: "Maisuls",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632840/user_profile_images/T02NE0241-UPL530BJ8-71dcd1eab182-512_snomcx.png",
    address: "Park Güell, Barcelona"
  },
  {
    first_name: "Roy",
    last_name: "Souvereyns",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575632956/user_profile_images/T02NE0241-UPNNQ4SQ7-7a67b587c825-512_i1goyi.png",
    address: "Brussels, Belgium"
  },
  {
    first_name: "Sandra",
    last_name: "Carmona Serrat",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633072/user_profile_images/T02NE0241-UPNR00MJS-3f78e18209ea-512_pzuxot.jpg",
    address: "Tibidabo, Barcelona"
  },
  {
    first_name: "Sarah",
    last_name: "Ma",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633188/user_profile_images/T02NE0241-UPNR02CCE-79f183a257a3-512_buopuu.jpg",
    address: "Los Angeles, US"
  },
  {
    first_name: "Smruthi",
    last_name: "Lattupalli",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633315/user_profile_images/T02NE0241-UPE3UGVHP-ca0511be2cc0-512_njvjve.jpg",
    address: "Joanic, Barcelona"
  },
  {
    first_name: "Thomas",
    last_name: "Julien",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633440/user_profile_images/T02NE0241-UP9P145FU-5c9d7959b92f-512_dkkh5s.jpg",
    address: "Avignon, France"
  },
  {
    first_name: "Veronika",
    last_name: "Wajda",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633583/user_profile_images/T02NE0241-UPNSFK57Y-fded15e76e1f-512_wcspvd.jpg",
    address: "Calgary, Canada"
  },
  {
    first_name: "Humbeline",
    last_name: "De Marcillac",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633722/user_profile_images/T02NE0241-UP7SKR550-27db0832a318-512_xy6law.jpg",
    address: "Marcillac, France"
  },
  {
    first_name: "Glen",
    last_name: "Warren",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575633856/user_profile_images/T02NE0241-UL37H2W9L-a2b642e6c3d4-512_htrphc.jpg",
    address: "Shoreditch, London"
  },
  {
    first_name: "Daniel",
    last_name: "Landes",
    photo: "https://res.cloudinary.com/kl3000/image/upload/v1575635966/user_profile_images/T02NE0241-UP7SKTM0S-5cd01d3cbc2a-512_pz6zsa.jpg",
    address: "Westminster, London"
  }]


def seed_loan_offers(n, selected_user)
  old_count = Offer.count
  p "#{old_count} existing offers"
  p "Seeding new offers"
  # user_photo = @photos[rand(0..11)]
  n.times do
    new_offer = Offer.new(amount: (100 * rand(1..100)),
      currency: "EUR",
      interest: rand(1..20),
      description: "Hi I'm #{selected_user[:first_name]}! #{@descriptions[rand(@descriptions.length)]} By far the best deal in #{selected_user[:address]}",
      bank_account: rand(100000000000..999999999999),
      address: selected_user[:address],
      user_id: User.last.id,
      remote_photo_url: selected_user[:photo])
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
  p "Destroying dependencies (offers)"
  Offer.destroy_all
  p "Destroying users"
  User.destroy_all
  p "Seeding new users"
  n.times do
    selected_user = @users[rand(@users.length)]
    new_user = User.new(
      email: "#{selected_user[:first_name]}.#{selected_user[:last_name]}@#{@domains[rand(@domains.length)]}",
      password: "123456",
      first_name: selected_user[:first_name],
      last_name: selected_user[:last_name])
    if new_user.valid?
      new_user.save
      p User.last
      p "New User No. #{User.count}"
      seed_loan_offers(1, selected_user)
    else
      p new_user.errors.messages
    end
  end
  p new_count = "Seeded #{User.count - old_count} New Users"
  p total_count = "#{User.count} Total Users"
end

seed_users(30)
