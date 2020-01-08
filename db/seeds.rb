# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create({ username: "Patrick" })
user2 = User.create({ username: "Dani" })

event1 = Event.create({ name: "pool party", 
    description: "We splashin!", 
    datetime: DateTime.current,
    user: user1,
})

event2 = Event.create({ name: "bingo", 
    description: "we call it like we see it", 
    datetime: DateTime.current,
    user: user2,
})

user_event1 = UserEvent.create({ user: user2, event: event1 })
user_event2 = UserEvent.create({ user: user1, event: event2 })
