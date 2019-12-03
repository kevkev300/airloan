# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@names = ["Norberto", "Jules", "Joseph", "Tyrone", "Edmund", "Minh", "Ervin", "Genaro", "Lindsey", "Cruz", "Zackary", "Carson", "Jason", "Alden", "Stan", "Wilburn", "Cyrus", "Andre", "Rashad", "Noah", "Tim", "Bret", "Donn", "Gregorio", "Hassan", "Jay", "Jeff", "Cletus", "Jon", "Monty", "Foster", "Curtis", "Earle", "Quentin", "Franklin", "Carlo", "Rudolf", "Mathew", "Roosevelt", "Antione", "Claud", "Jacques", "Whitney", "Colby", "Gerardo", "Williams", "Sebastian", "Rueben", "Maynard", "Ben"]

def seed_users
  User.destroy_all
  p "Destroying users"
  p "Seeding users"
  1000.times do
    new = User.create(email: "#{@names[rand(50)]}@gmail.com", encrypted_password: a1b2c3d4e5f6, first_name: "#{@names[rand(50)]}", last_name: "#{@names[rand(50)]}")
    p "#{new.valid?}"
  end
  p "Seeded #{User.count} users"
end

seed_users

