# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
recette_1 = Recette.create(name: "BBQ coréen", descrition: "porc, kimchi, riz")
recette_2 = Recette.create(name: "ragout soja", descrition: "pate de soja, courgettes, tofu")
recette_3 = Recette.create(name: "ragout kimchi", descrition: "kimchi, pommes de terre, courgettes")
