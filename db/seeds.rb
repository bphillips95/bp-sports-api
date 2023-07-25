# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ArticleTag.destroy_all
Article.destroy_all 
User.destroy_all
Tag.destroy_all

tag1 = Tag.create(city: "Atanta",name: "Braves")
tag2 = Tag.create(city: "Miami",name: "Marlins")
tag3 = Tag.create(city: "New York",name: "Mets")
tag4 = Tag.create(city: "Philadelphia",name: "Phillies")
tag5 = Tag.create(city: "Washington",name: "Nationals")

tag6 = Tag.create(city: "Chicago",name: "Cubs")
tag7 = Tag.create(city: "Cincinnati",name: "Reds")
tag8 = Tag.create(city: "Milwaukee",name: "Brewers")
tag9 = Tag.create(city: "Pittsburgh",name: "Pirates")
tag10 = Tag.create(city: "St. Louis",name: "Cardinals")

tag11 = Tag.create(city: "Arizona",name: "Diamondbacks")
tag12 = Tag.create(city: "Colorado",name: "Rockies")
tag13 = Tag.create(city: "Los Angeles",name: "Dodgers")
tag14 = Tag.create(city: "San Diego",name: "Padres")
tag15 = Tag.create(city: "San Francisco",name: "Giants")

tag16 = Tag.create(city: "Baltimore",name: "Orioles")
tag17 = Tag.create(city: "Boston",name: "Red Sox")
tag18 = Tag.create(city: "New York",name: "Yankees")
tag19 = Tag.create(city: "Tampa Bay",name: "Rays")
tag20 = Tag.create(city: "Toronto",name: "Blue Jays")

tag21 = Tag.create(city: "Chicago",name: "White Sox")
tag22 = Tag.create(city: "Cleveland",name: "Indians")
tag23 = Tag.create(city: "Detroit",name: "Tigers")
tag24 = Tag.create(city: "Kansas City",name: "Royals")
tag25 = Tag.create(city: "Minnesota",name: "Twins")

tag26 = Tag.create(city: "Houston",name: "Astros")
tag27 = Tag.create(city: "Los Angeles",name: "Angels")
tag28 = Tag.create(city: "Oakland",name: "Athletics")
tag29 = Tag.create(city: "Seattle",name: "Mariners")
tag30 = Tag.create(city: "Texas",name: "Rangers")
