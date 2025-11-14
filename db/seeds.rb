# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Carro.create!([
  { marca: "Toyota", modelo: "Corolla", ano: 2020 },
  { marca: "Honda", modelo: "Civic", ano: 2019 },
  { marca: "Ford", modelo: "Mustang", ano: 2021 },
  { marca: "Chevrolet", modelo: "Camaro", ano: 2018 },
  { marca: "Volkswagen", modelo: "Golf", ano: 2022 }
])
