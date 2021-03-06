# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.first_or_create([
	{ name: 'Medellin' }, 
	{ name: 'Bogota' },
	{ name: "Cali" },
	{ name: "Barranquilla" },
	{ name: "Manizales" },
	{ name: "Cartagena" },
	{ name: "Bucaramanga" }
])

Type.first_or_create([
	{ name: "Virtual" },
	{ name: "Presential" },
])

Topic.first_or_create([
	{ name: "Language" },
	{ name: "Math" },
	{ name: "Chemistry" }
])