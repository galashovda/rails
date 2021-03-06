# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TODO: comment the following insertion because of this is not a dictionary table

# Post.create(title: "Mourinho says United 'need to grow up'",
#             body: "We gave you the best from Mourinho at today's news conference earlier on but now here's our story on what the United boss said before Sunday's Manchester derby.",
#             user_id: 1)

# TODO: add parentId to category table and add subcategory such as Football under Sport
Category.create(name: "Sport")
Category.create(name: "Fashion")
Category.create(name: "Politic")

Type.create(name: "RSS")
Type.create(name: "Social")

Channel.create(name: "FAPL", url: "http://premiership.ru/rss.xml", type_id: 1, category_id: 1, description: "FAPL.ru - информационный ресурс об английском футболе, ориентированный на русскоязычную аудиторию, независимо от государственной принадлежности.")
Channel.create(name: "UEFA Champions League", url: "https://www.uefa.com/rssfeed/uefachampionsleague/rss.xml", type_id: 1, category_id: 1, description: "Новости о футболе")
Channel.create(name: "UEFA Europe League", url: "https://ru.uefa.com/rssfeed/uefaeuropaleague/rss.xml", type_id: 1, category_id: 1, description: "Новости о футболе")


# Channel.create(name: "1", url: "1", type_id: 1, category_id: 1)
# Channel.create(name: "2", url: "2", type_id: 1, category_id: 1)
# Channel.create(name: "3", url: "3", type_id: 1, category_id: 1)
# Channel.create(name: "4", url: "4", type_id: 1, category_id: 1)
# Channel.create(name: "5", url: "5", type_id: 1, category_id: 1)
# Channel.create(name: "6", url: "6", type_id: 1, category_id: 1)

# Subscribe.create(user_id: 1, channel_id: 1)
# Subscribe.create(user_id: 1, channel_id: 2)
