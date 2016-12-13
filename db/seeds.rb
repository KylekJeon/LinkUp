# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

User.destroy_all
Membership.destroy_all
Group.destroy_all
Event.destroy_all
Rsvp.destroy_all
Admin.destroy_all


user1 = User.create!(username: "guest", password: "guest123", email: "dcolson@gmail.com", first_name: "Daniel", last_name: "Colson")
user2 = User.create!(username: "treeshadow", password: "password", email: "treeshadow@gmail.com", first_name: "Rahul", last_name: "Doshi"  )
user3 = User.create!(username: "edibledefended", password: "password", email: "edibledefended@gmail.com", first_name: "Stephen", last_name: "Mauer")
user4 = User.create!(username: "volunteercapitalist", password: "password", email: "volunteercapitalist@gmail.com", first_name: "Jonathan", last_name: "Slawitsky")
user5 = User.create!(username: "banjosrudhall", password: "password", email: "banjosrudhall@gmail.com", first_name: "Peter", last_name: "Tascio")
user6 = User.create!(username: "taylorracehorse", password: "password", email: "taylorracehorse@gmail.com", first_name: "Sean", last_name: "Garner" )
user7 = User.create!(username: "spottyvacuole", password: "password", email: "spottyvacuole@gmail.com", first_name: "Kevin", last_name: "Zhang" )
user8 = User.create!(username: "aerobicsinvitation", password: "password", email: "aerobicsinvitation@gmail.com", first_name: "Kenneth", last_name: "Chen" )
user9 = User.create!(username: "hydrocarbonreed", password: "password", email: "hydrocarbonreed@gmail.com", first_name: "Chris", last_name: "Shay" )
user10 = User.create!(username: "crayongoose", password: "password", email: "crayongoose@gmail.com", first_name: "Duncan", last_name: "Beebe" )
user11 = User.create!(username: "sunnybacon", password: "password", email: "sunnybacon@gmail.com", first_name: "Leslie", last_name: "Brown" )
user12 = User.create!(username: "bipolarshampoo", password: "password", email: "bipolarshampoo@gmail.com", first_name: "Bethany" , last_name: "Hyland"  )
user13 = User.create!(username: "jazzcorky", password: "password", email: "jazzcorky@gmail.com", first_name: "Cici", last_name: "Wen" )
user14 = User.create!(username: "blisterhypnosis", password: "password", email: "blisterhypnosis@gmail.com", first_name: "Allie", last_name: "Harris"  )
user15 = User.create!(username: "springsremain", password: "password", email: "springsremain@gmail.com", first_name: "Amy", last_name: "Fang"  )



group1 = Group.create!(name: "Retirement Investor", description: "This is for current and soon to be retirees to learn about 'distribution' strategies. Will focus on generating monthly income, Preservation of capital and diversification techniques. All are welcome to discuss current allocations and generate new ideas. No solicitations or sales, just working to make the present better !", category: "career & business")

Membership.create!(user: user1, group: group1)
Admin.create!(user: user1, group: group1)
Membership.create!(user: user3, group: group1)
Membership.create!(user: user5, group: group1)
Membership.create!(user: user7, group: group1)
Membership.create!(user: user9, group: group1)

event1 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group1.id)
event2 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group1.id)
event3 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group1.id)
event4 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group1.id)
event5 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group1.id)

Rsvp.create!(user: user1, event: event1)
Rsvp.create!(user: user3, event: event1)
Rsvp.create!(user: user5, event: event1)
Rsvp.create!(user: user7, event: event2)
Rsvp.create!(user: user9, event: event2)
Rsvp.create!(user: user5, event: event2)
Rsvp.create!(user: user7, event: event3)
Rsvp.create!(user: user9, event: event3)
Rsvp.create!(user: user1, event: event3)
Rsvp.create!(user: user3, event: event4)
Rsvp.create!(user: user9, event: event4)
Rsvp.create!(user: user1, event: event4)
Rsvp.create!(user: user3, event: event5)
Rsvp.create!(user: user5, event: event5)
Rsvp.create!(user: user7, event: event5)




group2 = Group.create!(name: "Becoming Your Best Self", description: "We are looking to meet with people interested in learning to become beautiful inside out. In style, in class, with confidence, let's have fun on our journey to personal growth. Let's feel empowered and learn to dream again. Let's lock arms to become the best versions of ourselves. Let's build beauty, energy, prosperity and health.

If you are a fitness instruction, a styliste, a hair styliste, a health care professional, a spiritual master, a yogi, a healer, we are waiting for you.

If you are looking for tips to a healthier lifestyle, weight loss, fitness and nutrition, we are waiting for you. If you are looking to connect with forward, progressive thinkers, dynamic individuals, we are waiting for you.", category:"social")

Membership.create!(user: user11, group: group2)
Membership.create!(user: user13, group: group2)
Membership.create!(user: user15, group: group2)
Membership.create!(user: user2, group: group2)
Membership.create!(user: user4, group: group2)

event6 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group2.id)
event7 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group2.id)
event8 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group2.id)
event9 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group2.id)
event10 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group2.id)

Rsvp.create!(user: user11, event: event6)
Rsvp.create!(user: user13, event: event6)
Rsvp.create!(user: user15, event: event6)
Rsvp.create!(user: user2, event: event7)
Rsvp.create!(user: user4, event: event7)
Rsvp.create!(user: user15, event: event7)
Rsvp.create!(user: user2, event: event8)
Rsvp.create!(user: user4, event: event8)
Rsvp.create!(user: user11, event: event8)
Rsvp.create!(user: user13, event: event9)
Rsvp.create!(user: user4, event: event9)
Rsvp.create!(user: user11, event: event9)
Rsvp.create!(user: user13, event: event10)
Rsvp.create!(user: user15, event: event10)
Rsvp.create!(user: user2, event: event10)


group3 = Group.create!(name: "Sustainability Finance Professionals", description: "Welcome,

The purpose of this group is to unite the investment community (CPA's, Impact Investors, Attorneys) with sustainability and CSR professionals so that we may further bring our worlds together to measure and integrate sustainability best practices as part of an overall growth strategy.

We get together monthly for drinks and snacks to connect with like-minded professionals who are committed to aligning sustainability with value added impact driven profitability.

Join us for our various events that include:

1.  Networking events

2.  Guest Panels

3.  Annual Conference

4.  Career Matchmaking event = Events

", category:"career & business")



Membership.create!(user: user6, group: group3)
Membership.create!(user: user8, group: group3)
Membership.create!(user: user10, group: group3)
Membership.create!(user: user12, group: group3)
Membership.create!(user: user14, group: group3)

event11 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group3.id)
event12 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group3.id)
event13 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group3.id)
event14 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group3.id)
event15 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group3.id)

Rsvp.create!(user: user6, event: event11)
Rsvp.create!(user: user8, event: event11)
Rsvp.create!(user: user10, event: event11)
Rsvp.create!(user: user12, event: event12)
Rsvp.create!(user: user14, event: event12)
Rsvp.create!(user: user10, event: event12)
Rsvp.create!(user: user12, event: event13)
Rsvp.create!(user: user14, event: event13)
Rsvp.create!(user: user6, event: event13)
Rsvp.create!(user: user8, event: event14)
Rsvp.create!(user: user14, event: event14)
Rsvp.create!(user: user6, event: event14)
Rsvp.create!(user: user8, event: event15)
Rsvp.create!(user: user10, event: event15)
Rsvp.create!(user: user12, event: event15)




group4 = Group.create!(name: "Fab Ladies", description: "This group is for ladies who like to go out, have fun and make new friends in NYC...Our events will include happy hour drinks, dining out, brunch, sporting events, etc.. I'm also open to any suggestions. Summer's here which is the perfect time to discover and enjoy what NYC has to offer! Looking forward to many adventures together!!

PS- You must attend 1 event per month to be considered an active member.", category:"social")



Membership.create!(user: user2, group: group4)
Membership.create!(user: user4, group: group4)
Membership.create!(user: user6, group: group4)
Membership.create!(user: user8, group: group4)
Membership.create!(user: user10, group: group4)

event16 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group4.id)
event17 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group4.id)
event18 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group4.id)
event19 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group4.id)
event20 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group4.id)

Rsvp.create!(user: user2, event: event16)
Rsvp.create!(user: user4, event: event16)
Rsvp.create!(user: user6, event: event16)
Rsvp.create!(user: user8, event: event17)
Rsvp.create!(user: user10, event: event17)
Rsvp.create!(user: user6, event: event17)
Rsvp.create!(user: user8, event: event18)
Rsvp.create!(user: user10, event: event18)
Rsvp.create!(user: user2, event: event18)
Rsvp.create!(user: user4, event: event19)
Rsvp.create!(user: user10, event: event19)
Rsvp.create!(user: user2, event: event19)
Rsvp.create!(user: user4, event: event20)
Rsvp.create!(user: user6, event: event20)
Rsvp.create!(user: user8, event: event20)



group5 = Group.create!(name: "Manhattan Martial Arts (MMA)", description: "This group is for nice people who have an interest and/or experience in martial arts. Meetups will involve: warm-ups, drilling, and light sparring. We understand that martial arts training can be both expensive and intimidating, so this group is a nice inbetween; a place where you can learn some basics if you have no experience, or polish and practice your techniques with fellow martial artists if you have your own martial knowledge.

Our members come from very varied backgrounds and thus styles, with varying levels of skill. What is uniform is the respect, control, and general comradeship that has been a key element of our meet up. We also have a  small (growing) network of martial art schools, coaches, and meetups that we are starting to collaborate with.

We try to have some ideas as to what we will be drilling on a given day/month, but anyone can show up and do as they please, think of it as an open mat day. Warm up and drilling takes place in the first half an hour to an hour of the meet up, then we spar.

When the weather is fine, we meet in Central Park just off Central Park West and 86th Street; in the colder months, we meet at studio spaces, and locations that are announced one or two days prior to each session latest. Join us!*

*PLEASE NOTE: This is a fun and friendly training environment. However, given the intense physical nature of our activities, injuries will occur from time to time. THE ORGANIZERS OF THIS GROUP ARE IN NO WAY RESPONSIBLE FOR ANY INJURIES THAT MIGHT OCCUR.

*RULES OF ENGAGEMENT* When sparring we adhere to the common 50%, 2/3rds strength when sparring that is common practice in many dojos and camps. If you wish to engage harder, just communicate with your partner beforehand so you both are on the same page (there are many of us who have no issues with ramping up the intensity). We are here to test each other and test ourselves, learn from each other and ultimately learn about ourselves. Strength is not just how hard you can punch, but having discipline and control as well. ", category:"sports")


Membership.create!(user: user12, group: group5)
Membership.create!(user: user14, group: group5)
Membership.create!(user: user1, group: group5)
Admin.create!(user: user1, group: group5)
Membership.create!(user: user3, group: group5)
Membership.create!(user: user5, group: group5)

event21 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group5.id)
event22 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group5.id)
event23 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group5.id)
event24 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group5.id)
event25 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group5.id)

Rsvp.create!(user: user12, event: event21)
Rsvp.create!(user: user14, event: event21)
Rsvp.create!(user: user1, event: event21)
Rsvp.create!(user: user3, event: event22)
Rsvp.create!(user: user5, event: event22)
Rsvp.create!(user: user1, event: event22)
Rsvp.create!(user: user3, event: event23)
Rsvp.create!(user: user5, event: event23)
Rsvp.create!(user: user12, event: event23)
Rsvp.create!(user: user14, event: event24)
Rsvp.create!(user: user5, event: event24)
Rsvp.create!(user: user12, event: event24)
Rsvp.create!(user: user14, event: event25)
Rsvp.create!(user: user1, event: event25)
Rsvp.create!(user: user3, event: event25)



group6 = Group.create!(name: "Craft Mail", description: "Hello!
Welcome to Brooklyn Craft Mail Meet Up!
In our activity, we make a pretty envelope and write a letter or a postcard or a card for someone. If you are interested in craft, writing letters, illustrations or chatting, just join us!
I will be waiting for you in a coffee shop.
Let's write a handmade letter, which is unforgettable for a recipient!", category:"social")



Membership.create!(user: user7, group: group6)
Membership.create!(user: user9, group: group6)
Membership.create!(user: user11, group: group6)
Membership.create!(user: user13, group: group6)
Membership.create!(user: user15, group: group6)


event26 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group6.id)
event27 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group6.id)
event28 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group6.id)
event29 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group6.id)
event30 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group6.id)

Rsvp.create!(user: user7, event: event26)
Rsvp.create!(user: user9, event: event26)
Rsvp.create!(user: user11, event: event26)
Rsvp.create!(user: user13, event: event27)
Rsvp.create!(user: user15, event: event27)
Rsvp.create!(user: user11, event: event27)
Rsvp.create!(user: user13, event: event28)
Rsvp.create!(user: user15, event: event28)
Rsvp.create!(user: user7, event: event28)
Rsvp.create!(user: user9, event: event29)
Rsvp.create!(user: user15, event: event29)
Rsvp.create!(user: user7, event: event29)
Rsvp.create!(user: user9, event: event30)
Rsvp.create!(user: user11, event: event30)
Rsvp.create!(user: user13, event: event30)




group7 = Group.create!(name: "Lectures & Conversations", description: "Are you a lifelong learner?  Are you thrilled by 'light bulb' moments.  Did you choose your own adventure novels as a child?  Did you go back and sift through all the possible outcomes?

Manhattan Lectures & Conversations is a group of knowledge seekers and volunteers looking for engaging conversations and lectures across NYC ranging from the eclectic to the mainstream. The vision is to connect people with a love for learning, old and young, singles and couples, boroughs and islanders alike, in a way that fosters both community and growth.

NYC has some of the greatest minds on earth coursing through it on a daily basis, so let's take advantage of that fact and get our learn on!

Additionally, we will have coffee and discussion after each lecture for those who are interested.", category:"arts")

Membership.create!(user: user1, group: group7)
Admin.create!(user: user1, group: group7)
Membership.create!(user: user5, group: group7)
Membership.create!(user: user9, group: group7)
Membership.create!(user: user13, group: group7)
Membership.create!(user: user2, group: group7)




event31 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group7.id)
event32 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group7.id)
event33 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group7.id)
event34 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group7.id)
event35 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group7.id)

Rsvp.create!(user: user1, event: event31)
Rsvp.create!(user: user5, event: event31)
Rsvp.create!(user: user9, event: event31)
Rsvp.create!(user: user13, event: event32)
Rsvp.create!(user: user2, event: event32)
Rsvp.create!(user: user9, event: event32)
Rsvp.create!(user: user13, event: event33)
Rsvp.create!(user: user2, event: event33)
Rsvp.create!(user: user1, event: event33)
Rsvp.create!(user: user5, event: event34)
Rsvp.create!(user: user2, event: event34)
Rsvp.create!(user: user1, event: event34)
Rsvp.create!(user: user5, event: event35)
Rsvp.create!(user: user9, event: event35)
Rsvp.create!(user: user13, event: event35)



group8 = Group.create!(name: "Gainfully Unemployed", description: "Gainfully Unemployed is a group of people who lost their jobs but not their lives. This group consists of people who proactively enrich their lives with knowledge, experiences, action, and just plain fun. Learn more about us here: http://vimeo.com/39087073

Gainfully Unemployeds seek jobs, company, events and resources. In this group, we share ideas about resumes, interview tips, employment opportunities and free to low cost activities around the city. Since we all live productive lives there is no way we can spend the entire day sending out resumes. Best of all, if you are here, you are surrounded by people who are just like you; people who support you, applaud you, and just can't wait to meet you!

One of this big goals of this group is to expose its members to options of things you can do with all that free time. That is to say, we might have an event which will be enjoyable in its own right but it is also a door being opened for you to do that again on your own. Whether it be a volunteer opportunity, a free movie or just a cool place in general to check we welcome your ideas. We require you to be contributor to the group and the best way to contribute is with ideas or more importantly with your presence. This group will be what you make it.

So let's make it the best it can possibly be and contribute in the following ways: Forum comments: Some of you might have seen the new forums that have replaces the old message boards. We need all members to contribute Meet up Suggestions: If you have a cool place you want to check out or an idea for what to do please share it.", category:"social")

Membership.create!(user: user6, group: group8)
Membership.create!(user: user10, group: group8)
Membership.create!(user: user14, group: group8)
Membership.create!(user: user3, group: group8)
Membership.create!(user: user7, group: group8)


event36 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group8.id)
event37 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group8.id)
event38 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group8.id)
event39 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group8.id)
event40 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group8.id)


Rsvp.create!(user: user6, event: event36)
Rsvp.create!(user: user10, event: event36)
Rsvp.create!(user: user14, event: event36)
Rsvp.create!(user: user3, event: event37)
Rsvp.create!(user: user7, event: event37)
Rsvp.create!(user: user14, event: event37)
Rsvp.create!(user: user3, event: event38)
Rsvp.create!(user: user7, event: event38)
Rsvp.create!(user: user6, event: event38)
Rsvp.create!(user: user10, event: event39)
Rsvp.create!(user: user7, event: event39)
Rsvp.create!(user: user6, event: event39)
Rsvp.create!(user: user10, event: event40)
Rsvp.create!(user: user14, event: event40)
Rsvp.create!(user: user3, event: event40)


group9 = Group.create!(name: "Django-NYC", description: "Django-nyc's goal is to create! a community for those interested in Django to meet, share ideas, create!, learn, and have a good time. The focus will be Django and web application design and development. Python will obviously be an underlining theme, but there are specific python groups focused on python solely and that's not us. We want to give Django the attention it deserves.", category:"social")


Membership.create!(user: user11, group: group9)
Membership.create!(user: user15, group: group9)
Membership.create!(user: user2, group: group9)
Membership.create!(user: user7, group: group9)
Membership.create!(user: user12, group: group9)

event41 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group9.id)
event42 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group9.id)
event43 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group9.id)
event44 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group9.id)
event45 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group9.id)

Rsvp.create!(user: user11, event: event41)
Rsvp.create!(user: user15, event: event41)
Rsvp.create!(user: user2, event: event41)
Rsvp.create!(user: user7, event: event42)
Rsvp.create!(user: user12, event: event42)
Rsvp.create!(user: user2, event: event42)
Rsvp.create!(user: user7, event: event43)
Rsvp.create!(user: user12, event: event43)
Rsvp.create!(user: user11, event: event43)
Rsvp.create!(user: user15, event: event44)
Rsvp.create!(user: user12, event: event44)
Rsvp.create!(user: user11, event: event44)
Rsvp.create!(user: user15, event: event45)
Rsvp.create!(user: user2, event: event45)
Rsvp.create!(user: user7, event: event45)



group10 = Group.create!(name: "Rock & Ice", description: "ROCK & ICE, yes, its all about ROCK & ICE CLIMBING - We are a volunteer rock climbing and ice climbing group based in New York City and surrounding areas and we do fun rock climbing events during warm seasons out in the Gunks or other climbing/camping areas in New Hampshire, Adirondacks, CT, NJ or even all the way to the West or organize indoor climbing, bouldering events in local rock climbing gyms in NYC And we do ice climbing, alpine climbing, snow climbing, mixed climbing or even glacier climbing and mountaineering in the winter and when we are not rock climbing we will do other fun activities such as snowboarding, skiing, backcountry snowboarding and skiing, alpine skiing alpine snowboarding and freeride snowboarding, snowshoeing, cross country skiing, mountaineering, whitewater rafting, kayaking, mountain biking, hiking or even fun tree climbing, caving etc....

Please notice that we are an INDEPENDENT rock climbing and ice climbing group and we are not an affiliate of any commercial rock climbing gyms nor a commercial guide service. We do however from time to time use reputable professional climbing guide services for climbing courses and climbing trips to ensure the quality of the courses.

You can always meet other local rock climbers or ice climbers to share tips, discuss gear, and plan trips and you can use our message board to exchange info or look for climbing partner or ride-sharing partners.

Please also visit our sister group The Next Adventure which also organizes rock/ice climbing or rafting/kayaking events. http://www.meetup.com/the-next-adventure/

Disclaimer of Liability

CLIMBING IS A DANGEROUS SPORT!

Involvement in rock climbing carries a significant risk of personal injury or death. CLIMB AT YOUR OWN RISK!", category:"outdoor adventures")

Membership.create!(user: user3, group: group10)
Membership.create!(user: user8, group: group10)
Membership.create!(user: user13, group: group10)
Membership.create!(user: user4, group: group10)
Membership.create!(user: user9, group: group10)

event46 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group10.id)
event47 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group10.id)
event48 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group10.id)
event49 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group10.id)
event50 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group10.id)

Rsvp.create!(user: user3, event: event46)
Rsvp.create!(user: user8, event: event46)
Rsvp.create!(user: user13, event: event46)
Rsvp.create!(user: user4, event: event47)
Rsvp.create!(user: user9, event: event47)
Rsvp.create!(user: user13, event: event47)
Rsvp.create!(user: user4, event: event48)
Rsvp.create!(user: user9, event: event48)
Rsvp.create!(user: user3, event: event48)
Rsvp.create!(user: user8, event: event49)
Rsvp.create!(user: user9, event: event49)
Rsvp.create!(user: user3, event: event49)
Rsvp.create!(user: user8, event: event50)
Rsvp.create!(user: user13, event: event50)
Rsvp.create!(user: user14, event: event50)



group11 = Group.create!(name: "Fat Cat Fab Lab", description: "fat cat FAB LAB is a makerspace in the West Village, Manhattan NYC. A place for learning, designing, collaborating and building.

We offer traditional and digital fabrication tools, workshops and events with an emphasis on low cost open source innovation.", category:"social")

Membership.create!(user: user14, group: group11)
Membership.create!(user: user5, group: group11)
Membership.create!(user: user10, group: group11)
Membership.create!(user: user15, group: group11)
Membership.create!(user: user1, group: group11)
Admin.create!(user: user1, group: group11)

event51 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group11.id)
event52 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group11.id)
event53 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group11.id)
event54 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group11.id)
event55 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group11.id)

Rsvp.create!(user: user14, event: event51)
Rsvp.create!(user: user5, event: event51)
Rsvp.create!(user: user10, event: event51)
Rsvp.create!(user: user15, event: event52)
Rsvp.create!(user: user1, event: event52)
Rsvp.create!(user: user10, event: event52)
Rsvp.create!(user: user15, event: event53)
Rsvp.create!(user: user1, event: event53)
Rsvp.create!(user: user14, event: event53)
Rsvp.create!(user: user5, event: event54)
Rsvp.create!(user: user1, event: event54)
Rsvp.create!(user: user14, event: event54)
Rsvp.create!(user: user5, event: event55)
Rsvp.create!(user: user10, event: event55)
Rsvp.create!(user: user15, event: event55)




group12 = Group.create!(name: "Write. Inspire. Repeat.", description: "'Write What You Know' - Mark Twain.

And with that, starts the 'Write, Inspire, Repeat' Workshop - a judgment-free zone where you can work for a whole hour on your novel, manuscript, poetry, etc. As storytellers, we all have gone through obstacles (procrastination, writer's block, and others), so I hope this quiet meetup can help you to continue your writing, to inspire yourself, and to maintain your perseverance.

DISCLAIMER : This meetup group is intended for growing writers at any level, who are looking for inspiration, practice with their craft, and networking with other writers. I am not an experienced writer, but this will be a nurturing environment for all of us.", category:"arts")

Membership.create!(user: user3, group: group12)
Membership.create!(user: user6, group: group12)
Membership.create!(user: user9, group: group12)
Membership.create!(user: user12, group: group12)
Membership.create!(user: user15, group: group12)


event56 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group12.id)
event57 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group12.id)
event58 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group12.id)
event59 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group12.id)
event60 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group12.id)

Rsvp.create!(user: user3, event: event56)
Rsvp.create!(user: user6, event: event56)
Rsvp.create!(user: user9, event: event56)
Rsvp.create!(user: user12, event: event57)
Rsvp.create!(user: user15, event: event57)
Rsvp.create!(user: user9, event: event57)
Rsvp.create!(user: user12, event: event58)
Rsvp.create!(user: user15, event: event58)
Rsvp.create!(user: user3, event: event58)
Rsvp.create!(user: user6, event: event59)
Rsvp.create!(user: user15, event: event59)
Rsvp.create!(user: user3, event: event59)
Rsvp.create!(user: user6, event: event60)
Rsvp.create!(user: user9, event: event60)
Rsvp.create!(user: user12, event: event60)



group13 = Group.create!(name: "Engineers for a Sustainable World", description: "connecting people who are passionate about sustainability with research, design, and outreach projects in NYC", category:"career & business")

Membership.create!(user: user1, group: group13)
Membership.create!(user: user1, group: group13)
Membership.create!(user: user4, group: group13)
Membership.create!(user: user7, group: group13)
Membership.create!(user: user10, group: group13)
Membership.create!(user: user13, group: group13)

event61 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group13.id)
event62 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group13.id)
event63 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group13.id)
event64 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group13.id)
event65 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group13.id)

Rsvp.create!(user: user1, event: event61)
Rsvp.create!(user: user4, event: event61)
Rsvp.create!(user: user7, event: event61)
Rsvp.create!(user: user10, event: event62)
Rsvp.create!(user: user13, event: event62)
Rsvp.create!(user: user7, event: event62)
Rsvp.create!(user: user10, event: event63)
Rsvp.create!(user: user13, event: event63)
Rsvp.create!(user: user1, event: event63)
Rsvp.create!(user: user4, event: event64)
Rsvp.create!(user: user13, event: event64)
Rsvp.create!(user: user1, event: event64)
Rsvp.create!(user: user4, event: event65)
Rsvp.create!(user: user7, event: event65)
Rsvp.create!(user: user10, event: event65)



group14 = Group.create!(name: "Free Yoga Classes", description: "This is a group for folks who are interested in teaching or attending unpaid yoga classes. Novice teachers and students are more than welcome. We can organize in homes or in public spaces. Members of this group should be interested in yoga as a spiritual practice versus as a business or financial opportunity. There are no rules except that everything stays free!", category:"health & fitness")


event66 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group14.id)
event67 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group14.id)
event68 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group14.id)
event69 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group14.id)
event70 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group14.id)

Membership.create!(user: user2, group: group14)
Membership.create!(user: user5, group: group14)
Membership.create!(user: user8, group: group14)
Membership.create!(user: user11, group: group14)
Membership.create!(user: user14, group: group14)

Rsvp.create!(user: user2, event: event66)
Rsvp.create!(user: user5, event: event66)
Rsvp.create!(user: user8, event: event66)
Rsvp.create!(user: user11, event: event67)
Rsvp.create!(user: user14, event: event67)
Rsvp.create!(user: user8, event: event67)
Rsvp.create!(user: user11, event: event68)
Rsvp.create!(user: user14, event: event68)
Rsvp.create!(user: user2, event: event68)
Rsvp.create!(user: user5, event: event69)
Rsvp.create!(user: user8, event: event69)
Rsvp.create!(user: user14, event: event69)
Rsvp.create!(user: user2, event: event70)
Rsvp.create!(user: user5, event: event70)
Rsvp.create!(user: user8, event: event70)



group15 = Group.create!(name: "Futsal Across America", description: "FUTSAL ACROSS AMERICA pick up games: all week, many locations, put your shoes on and play with us It is fun, social and healthy  What to bring: indoor shoes, two t-shirts: one white one Red. Fee: 10 dollars per player per  game. Must RSVP through Paypal @ jaime@worldsoccerorg.com Only 10 players per game, no subs. . Arrive early for your game so you can warm up and we can explain the rules. spread the word. see you there. 24 hour cancellation notice for refund to be approved.

Looking forward to seeing you there

Tuesdays at William O'shea Education Complex; 100 west 77th street. Between Columbus and Amsterdam.

Tito Puente, Park West, Park West HS 525 50th street, ny ny. ", category:"sports")

Membership.create!(user: user2, group: group15)
Membership.create!(user: user6, group: group15)
Membership.create!(user: user10, group: group15)
Membership.create!(user: user14, group: group15)
Membership.create!(user: user15, group: group15)

event71 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group15.id)
event72 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group15.id)
event73 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group15.id)
event74 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group15.id)
event75 = Event.create!(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: group15.id)

Rsvp.create!(user: user2, event: event71)
Rsvp.create!(user: user6, event: event71)
Rsvp.create!(user: user10, event: event71)
Rsvp.create!(user: user14, event: event72)
Rsvp.create!(user: user15, event: event72)
Rsvp.create!(user: user10, event: event72)
Rsvp.create!(user: user14, event: event73)
Rsvp.create!(user: user15, event: event73)
Rsvp.create!(user: user2, event: event73)
Rsvp.create!(user: user6, event: event74)
Rsvp.create!(user: user15, event: event74)
Rsvp.create!(user: user2, event: event74)
Rsvp.create!(user: user6, event: event75)
Rsvp.create!(user: user10, event: event75)
Rsvp.create!(user: user14, event: event75)
