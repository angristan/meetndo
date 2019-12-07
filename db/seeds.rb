# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### Categories

# Food categories
food = Category.create(name: 'Food')
Category.create(name: 'Breakfast', parent: food)
Category.create(name: 'Brunch', parent: food)
Category.create(name: 'Lunch', parent: food)
Category.create(name: 'Dinner', parent: food)

# Sport categories
sport = Category.create(name: 'Sport')
Category.create(name: 'Tennis', parent: sport)
Category.create(name: 'Football', parent: sport)
Category.create(name: 'Basketball', parent: sport)
Category.create(name: 'Swimming', parent: sport)

# Education categories
education = Category.create(name: 'Education')
Category.create(name: 'Chemistry', parent: education)
Category.create(name: 'Mathematics', parent: education)
Category.create(name: 'Economics', parent: education)

# Entertainment categories
entertainment = Category.create(name: 'Entertainment')
Category.create(name: 'Theater', parent: entertainment)
Category.create(name: 'Show', parent: entertainment)
Category.create(name: 'Concert', parent: entertainment)

# Art categories
art = Category.create(name: 'Art')
Category.create(name: 'Painting', parent: art)
Category.create(name: 'Music', parent: art)

# Outdoors categories
outdoors = Category.create(name: 'Outdoors')
Category.create(name: 'Hiking', parent: outdoors)
Category.create(name: 'Jogging', parent: outdoors)
Category.create(name: 'Kayaking', parent: outdoors)
