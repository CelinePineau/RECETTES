# Clear existing data
Recette.destroy_all

# Seed recettes
recette_1 = Recette.create(name: "BBQ coréen", descrition: "porc, kimchi, riz")
recette_2 = Recette.create(name: "ragout soja", descrition: "pate de soja, courgettes, tofu")
recette_3 = Recette.create(name: "ragout kimchi", descrition: "kimchi, pommes de terre, courgettes")
