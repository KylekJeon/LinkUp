# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Membership.destroy_all
Group.destroy_all
Event.destroy_all
Rsvp.destroy_all



User.create(username: "guest", password: "guest123", email: "dcolson@gmail.com", first_name: "Daniel", last_name: "Colson")
User.create(username: "treeshadow", password: "password", email: "treeshadow@gmail.com", first_name: "Rahul", last_name: "Doshi"  )
User.create(username: "edibledefended", password: "password", email: "edibledefended@gmail.com", first_name: "Stephen", last_name: "Mauer")
User.create(username: "volunteercapitalist", password: "password", email: "volunteercapitalist@gmail.com", first_name: "Jonathan", last_name: "Slawitsky")
User.create(username: "banjosrudhall", password: "password", email: "banjosrudhall@gmail.com", first_name: "Peter", last_name: "Tascio")
User.create(username: "taylorracehorse", password: "password", email: "taylorracehorse@gmail.com", first_name: "Sean", last_name: "Garner" )
User.create(username: "spottyvacuole", password: "password", email: "spottyvacuole@gmail.com", first_name: "Kevin", last_name: "Zhang" )
User.create(username: "aerobicsinvitation", password: "password", email: "aerobicsinvitation@gmail.com", first_name: "Kenneth", last_name: "Chen" )
User.create(username: "hydrocarbonreed", password: "password", email: "hydrocarbonreed@gmail.com", first_name: "Chris", last_name: "Shay" )
User.create(username: "crayongoose", password: "password", email: "crayongoose@gmail.com", first_name: "Duncan", last_name: "Beebe" )
User.create(username: "sunnybacon", password: "password", email: "sunnybacon@gmail.com", first_name: "Leslie", last_name: "Brown" )
User.create(username: "bipolarshampoo", password: "password", email: "bipolarshampoo@gmail.com", first_name: "Bethany" , last_name: "Hyland"  )
User.create(username: "jazzcorky", password: "password", email: "jazzcorky@gmail.com", first_name: "Cici", last_name: "Wen" )
User.create(username: "blisterhypnosis", password: "password", email: "blisterhypnosis@gmail.com", first_name: "Allie", last_name: "Harris"  )
User.create(username: "springsremain", password: "password", email: "springsremain@gmail.com", first_name: "Amy", last_name: "Fang"  )



Group.create(name: "Retirement Investor", description: "This is for current and soon to be retirees to learn about 'distribution' strategies. Will focus on generating monthly income, Preservation of capital and diversification techniques. All are welcome to discuss current allocations and generate new ideas. No solicitations or sales, just working to make the present better !")

Membership.create(user_id: 1, group_id: 1)
Membership.create(user_id: 3, group_id: 1)
Membership.create(user_id: 5, group_id: 1)
Membership.create(user_id: 7, group_id: 1)
Membership.create(user_id: 9, group_id: 1)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 1)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 1)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 1)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 1)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 1)

Rsvp.create(user_id: 1, event_id: 1)
Rsvp.create(user_id: 3, event_id: 1)
Rsvp.create(user_id: 5, event_id: 1)
Rsvp.create(user_id: 7, event_id: 2)
Rsvp.create(user_id: 9, event_id: 2)
Rsvp.create(user_id: 5, event_id: 2)
Rsvp.create(user_id: 7, event_id: 3)
Rsvp.create(user_id: 9, event_id: 3)
Rsvp.create(user_id: 1, event_id: 3)
Rsvp.create(user_id: 3, event_id: 4)
Rsvp.create(user_id: 9, event_id: 4)
Rsvp.create(user_id: 1, event_id: 4)
Rsvp.create(user_id: 3, event_id: 5)
Rsvp.create(user_id: 5, event_id: 5)
Rsvp.create(user_id: 7, event_id: 5)




Group.create(name: "Becoming Your Best Self", description: "We are looking to meet with people interested in learning to become beautiful inside out. In style, in class, with confidence, let's have fun on our journey to personal growth. Let's feel empowered and learn to dream again. Let's lock arms to become the best versions of ourselves. Let's build beauty, energy, prosperity and health.

If you are a fitness instruction, a styliste, a hair styliste, a health care professional, a spiritual master, a yogi, a healer, we are waiting for you.

If you are looking for tips to a healthier lifestyle, weight loss, fitness and nutrition, we are waiting for you. If you are looking to connect with forward, progressive thinkers, dynamic individuals, we are waiting for you.")

Membership.create(user_id: 11, group_id: 2)
Membership.create(user_id: 13, group_id: 2)
Membership.create(user_id: 15, group_id: 2)
Membership.create(user_id: 2, group_id: 2)
Membership.create(user_id: 4, group_id: 2)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 2)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 2)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 2)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 2)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 2)

Rsvp.create(user_id: 11, event_id: 6)
Rsvp.create(user_id: 13, event_id: 6)
Rsvp.create(user_id: 15, event_id: 6)
Rsvp.create(user_id: 2, event_id: 7)
Rsvp.create(user_id: 4, event_id: 7)
Rsvp.create(user_id: 15, event_id: 7)
Rsvp.create(user_id: 2, event_id: 8)
Rsvp.create(user_id: 4, event_id: 8)
Rsvp.create(user_id: 11, event_id: 8)
Rsvp.create(user_id: 13, event_id: 9)
Rsvp.create(user_id: 4, event_id: 9)
Rsvp.create(user_id: 11, event_id: 9)
Rsvp.create(user_id: 13, event_id: 10)
Rsvp.create(user_id: 15, event_id: 10)
Rsvp.create(user_id: 2, event_id: 10)


Group.create(name: "Sustainability Finance Professionals", description: "Welcome,

The purpose of this group is to unite the investment community (CPA's, Impact Investors, Attorneys) with sustainability and CSR professionals so that we may further bring our worlds together to measure and integrate sustainability best practices as part of an overall growth strategy.

We get together monthly for drinks and snacks to connect with like-minded professionals who are committed to aligning sustainability with value added impact driven profitability.

Join us for our various events that include:

1.  Networking events

2.  Guest Panels

3.  Annual Conference

4.  Career Matchmaking Events

")



Membership.create(user_id: 6, group_id: 3)
Membership.create(user_id: 8, group_id: 3)
Membership.create(user_id: 10, group_id: 3)
Membership.create(user_id: 12, group_id: 3)
Membership.create(user_id: 14, group_id: 3)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 3)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 3)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 3)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 3)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 3)

Rsvp.create(user_id: 6, event_id: 11)
Rsvp.create(user_id: 8, event_id: 11)
Rsvp.create(user_id: 10, event_id: 11)
Rsvp.create(user_id: 12, event_id: 12)
Rsvp.create(user_id: 14, event_id: 12)
Rsvp.create(user_id: 10, event_id: 12)
Rsvp.create(user_id: 12, event_id: 13)
Rsvp.create(user_id: 14, event_id: 13)
Rsvp.create(user_id: 6, event_id: 13)
Rsvp.create(user_id: 8, event_id: 14)
Rsvp.create(user_id: 14, event_id: 14)
Rsvp.create(user_id: 6, event_id: 14)
Rsvp.create(user_id: 8, event_id: 15)
Rsvp.create(user_id: 10, event_id: 15)
Rsvp.create(user_id: 12, event_id: 15)




Group.create(name: "Fab Ladies", description: "This group is for ladies who like to go out, have fun and make new friends in NYC...Our events will include happy hour drinks, dining out, brunch, sporting events, etc.. I'm also open to any suggestions. Summer's here which is the perfect time to discover and enjoy what NYC has to offer! Looking forward to many adventures together!!

PS- You must attend 1 event per month to be considered an active member.")



Membership.create(user_id: 2, group_id: 4)
Membership.create(user_id: 4, group_id: 4)
Membership.create(user_id: 6, group_id: 4)
Membership.create(user_id: 8, group_id: 4)
Membership.create(user_id: 10, group_id: 4)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 4)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 4)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 4)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 4)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 4)

Rsvp.create(user_id: 2, event_id: 16)
Rsvp.create(user_id: 4, event_id: 16)
Rsvp.create(user_id: 6, event_id: 16)
Rsvp.create(user_id: 8, event_id: 17)
Rsvp.create(user_id: 10, event_id: 17)
Rsvp.create(user_id: 6, event_id: 17)
Rsvp.create(user_id: 8, event_id: 18)
Rsvp.create(user_id: 10, event_id: 18)
Rsvp.create(user_id: 2, event_id: 18)
Rsvp.create(user_id: 4, event_id: 19)
Rsvp.create(user_id: 10, event_id: 19)
Rsvp.create(user_id: 2, event_id: 19)
Rsvp.create(user_id: 4, event_id: 20)
Rsvp.create(user_id: 6, event_id: 20)
Rsvp.create(user_id: 8, event_id: 20)



Group.create(name: "Manhattan Martial Arts (MMA)", description: "This group is for nice people who have an interest and/or experience in martial arts. Meetups will involve: warm-ups, drilling, and light sparring. We understand that martial arts training can be both expensive and intimidating, so this group is a nice inbetween; a place where you can learn some basics if you have no experience, or polish and practice your techniques with fellow martial artists if you have your own martial knowledge.

Our members come from very varied backgrounds and thus styles, with varying levels of skill. What is uniform is the respect, control, and general comradeship that has been a key element of our meet up. We also have a  small (growing) network of martial art schools, coaches, and meetups that we are starting to collaborate with.

We try to have some ideas as to what we will be drilling on a given day/month, but anyone can show up and do as they please, think of it as an open mat day. Warm up and drilling takes place in the first half an hour to an hour of the meet up, then we spar.

When the weather is fine, we meet in Central Park just off Central Park West and 86th Street; in the colder months, we meet at studio spaces, and locations that are announced one or two days prior to each session latest. Join us!*

*PLEASE NOTE: This is a fun and friendly training environment. However, given the intense physical nature of our activities, injuries will occur from time to time. THE ORGANIZERS OF THIS GROUP ARE IN NO WAY RESPONSIBLE FOR ANY INJURIES THAT MIGHT OCCUR.

*RULES OF ENGAGEMENT* When sparring we adhere to the common 50%, 2/3rds strength when sparring that is common practice in many dojos and camps. If you wish to engage harder, just communicate with your partner beforehand so you both are on the same page (there are many of us who have no issues with ramping up the intensity). We are here to test each other and test ourselves, learn from each other and ultimately learn about ourselves. Strength is not just how hard you can punch, but having discipline and control as well. ")


Membership.create(user_id: 12, group_id: 5)
Membership.create(user_id: 14, group_id: 5)
Membership.create(user_id: 1, group_id: 5)
Membership.create(user_id: 3, group_id: 5)
Membership.create(user_id: 5, group_id: 5)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 5)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 5)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 5)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 5)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 5)

Rsvp.create(user_id: 12, event_id: 21)
Rsvp.create(user_id: 14, event_id: 21)
Rsvp.create(user_id: 1, event_id: 21)
Rsvp.create(user_id: 3, event_id: 22)
Rsvp.create(user_id: 5, event_id: 22)
Rsvp.create(user_id: 1, event_id: 22)
Rsvp.create(user_id: 3, event_id: 23)
Rsvp.create(user_id: 5, event_id: 23)
Rsvp.create(user_id: 12, event_id: 23)
Rsvp.create(user_id: 14, event_id: 24)
Rsvp.create(user_id: 5, event_id: 24)
Rsvp.create(user_id: 12, event_id: 24)
Rsvp.create(user_id: 14, event_id: 25)
Rsvp.create(user_id: 1, event_id: 25)
Rsvp.create(user_id: 3, event_id: 25)



Group.create(name: "Craft Mail", description: "Hello!
Welcome to Brooklyn Craft Mail Meet Up!
In our activity, we make a pretty envelope and write a letter or a postcard or a card for someone. If you are interested in craft, writing letters, illustrations or chatting, just join us!
I will be waiting for you in a coffee shop.
Let's write a handmade letter, which is unforgettable for a recipient!")



Membership.create(user_id: 7, group_id: 6)
Membership.create(user_id: 9, group_id: 6)
Membership.create(user_id: 11, group_id: 6)
Membership.create(user_id: 13, group_id: 6)
Membership.create(user_id: 15, group_id: 6)


Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 6)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 6)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 6)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 6)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 6)

Rsvp.create(user_id: 7, event_id: 26)
Rsvp.create(user_id: 9, event_id: 26)
Rsvp.create(user_id: 11, event_id: 26)
Rsvp.create(user_id: 13, event_id: 27)
Rsvp.create(user_id: 15, event_id: 27)
Rsvp.create(user_id: 11, event_id: 27)
Rsvp.create(user_id: 13, event_id: 28)
Rsvp.create(user_id: 15, event_id: 28)
Rsvp.create(user_id: 7, event_id: 28)
Rsvp.create(user_id: 9, event_id: 29)
Rsvp.create(user_id: 15, event_id: 29)
Rsvp.create(user_id: 7, event_id: 29)
Rsvp.create(user_id: 9, event_id: 30)
Rsvp.create(user_id: 11, event_id: 30)
Rsvp.create(user_id: 13, event_id: 30)




Group.create(name: "Lectures & Conversations", description: "Are you a lifelong learner?  Are you thrilled by 'light bulb' moments.  Did you choose your own adventure novels as a child?  Did you go back and sift through all the possible outcomes?

Manhattan Lectures & Conversations is a group of knowledge seekers and volunteers looking for engaging conversations and lectures across NYC ranging from the eclectic to the mainstream. The vision is to connect people with a love for learning, old and young, singles and couples, boroughs and islanders alike, in a way that fosters both community and growth.

NYC has some of the greatest minds on earth coursing through it on a daily basis, so let's take advantage of that fact and get our learn on!

Additionally, we will have coffee and discussion after each lecture for those who are interested.")

Membership.create(user_id: 1, group_id: 7)
Membership.create(user_id: 5, group_id: 7)
Membership.create(user_id: 9, group_id: 7)
Membership.create(user_id: 13, group_id: 7)
Membership.create(user_id: 2, group_id: 7)




Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 7)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 7)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 7)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 7)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 7)

Rsvp.create(user_id: 1, event_id: 31)
Rsvp.create(user_id: 5, event_id: 31)
Rsvp.create(user_id: 9, event_id: 31)
Rsvp.create(user_id: 13, event_id: 32)
Rsvp.create(user_id: 2, event_id: 32)
Rsvp.create(user_id: 9, event_id: 32)
Rsvp.create(user_id: 13, event_id: 33)
Rsvp.create(user_id: 2, event_id: 33)
Rsvp.create(user_id: 1, event_id: 33)
Rsvp.create(user_id: 5, event_id: 34)
Rsvp.create(user_id: 2, event_id: 34)
Rsvp.create(user_id: 1, event_id: 34)
Rsvp.create(user_id: 5, event_id: 35)
Rsvp.create(user_id: 9, event_id: 35)
Rsvp.create(user_id: 13, event_id: 35)



Group.create(name: "Gainfully Unemployed", description: "Gainfully Unemployed is a group of people who lost their jobs but not their lives. This group consists of people who proactively enrich their lives with knowledge, experiences, action, and just plain fun. Learn more about us here: http://vimeo.com/39087073

Gainfully Unemployeds seek jobs, company, events and resources. In this group, we share ideas about resumes, interview tips, employment opportunities and free to low cost activities around the city. Since we all live productive lives there is no way we can spend the entire day sending out resumes. Best of all, if you are here, you are surrounded by people who are just like you; people who support you, applaud you, and just can't wait to meet you!

One of this big goals of this group is to expose its members to options of things you can do with all that free time. That is to say, we might have an event which will be enjoyable in its own right but it is also a door being opened for you to do that again on your own. Whether it be a volunteer opportunity, a free movie or just a cool place in general to check we welcome your ideas. We require you to be contributor to the group and the best way to contribute is with ideas or more importantly with your presence. This group will be what you make it.

So let's make it the best it can possibly be and contribute in the following ways: Forum comments: Some of you might have seen the new forums that have replaces the old message boards. We need all members to contribute Meet up Suggestions: If you have a cool place you want to check out or an idea for what to do please share it.")

Membership.create(user_id: 6, group_id: 8)
Membership.create(user_id: 10, group_id: 8)
Membership.create(user_id: 14, group_id: 8)
Membership.create(user_id: 3, group_id: 8)
Membership.create(user_id: 7, group_id: 8)


Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 8)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 8)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 8)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 8)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 8)


Rsvp.create(user_id: 6, event_id: 36)
Rsvp.create(user_id: 10, event_id: 36)
Rsvp.create(user_id: 14, event_id: 36)
Rsvp.create(user_id: 3, event_id: 37)
Rsvp.create(user_id: 7, event_id: 37)
Rsvp.create(user_id: 14, event_id: 37)
Rsvp.create(user_id: 3, event_id: 38)
Rsvp.create(user_id: 7, event_id: 38)
Rsvp.create(user_id: 6, event_id: 38)
Rsvp.create(user_id: 10, event_id: 39)
Rsvp.create(user_id: 7, event_id: 39)
Rsvp.create(user_id: 6, event_id: 39)
Rsvp.create(user_id: 10, event_id: 40)
Rsvp.create(user_id: 14, event_id: 40)
Rsvp.create(user_id: 3, event_id: 40)


Group.create(name: "Django-NYC", description: "Django-nyc's goal is to create a community for those interested in Django to meet, share ideas, create, learn, and have a good time. The focus will be Django and web application design and development. Python will obviously be an underlining theme, but there are specific python groups focused on python solely and that's not us. We want to give Django the attention it deserves.")


Membership.create(user_id: 11, group_id: 9)
Membership.create(user_id: 15, group_id: 9)
Membership.create(user_id: 2, group_id: 9)
Membership.create(user_id: 7, group_id: 9)
Membership.create(user_id: 12, group_id: 9)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 9)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 9)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 9)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 9)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 9)

Rsvp.create(user_id: 11, event_id: 41)
Rsvp.create(user_id: 15, event_id: 41)
Rsvp.create(user_id: 2, event_id: 41)
Rsvp.create(user_id: 7, event_id: 42)
Rsvp.create(user_id: 12, event_id: 42)
Rsvp.create(user_id: 2, event_id: 42)
Rsvp.create(user_id: 7, event_id: 43)
Rsvp.create(user_id: 12, event_id: 43)
Rsvp.create(user_id: 11, event_id: 43)
Rsvp.create(user_id: 15, event_id: 44)
Rsvp.create(user_id: 12, event_id: 44)
Rsvp.create(user_id: 11, event_id: 44)
Rsvp.create(user_id: 15, event_id: 45)
Rsvp.create(user_id: 2, event_id: 45)
Rsvp.create(user_id: 7, event_id: 45)



Group.create(name: "Rock & Ice", description: "ROCK & ICE, yes, its all about ROCK & ICE CLIMBING - We are a volunteer rock climbing and ice climbing group based in New York City and surrounding areas and we do fun rock climbing events during warm seasons out in the Gunks or other climbing/camping areas in New Hampshire, Adirondacks, CT, NJ or even all the way to the West or organize indoor climbing, bouldering events in local rock climbing gyms in NYC And we do ice climbing, alpine climbing, snow climbing, mixed climbing or even glacier climbing and mountaineering in the winter and when we are not rock climbing we will do other fun activities such as snowboarding, skiing, backcountry snowboarding and skiing, alpine skiing alpine snowboarding and freeride snowboarding, snowshoeing, cross country skiing, mountaineering, whitewater rafting, kayaking, mountain biking, hiking or even fun tree climbing, caving etc....

Please notice that we are an INDEPENDENT rock climbing and ice climbing group and we are not an affiliate of any commercial rock climbing gyms nor a commercial guide service. We do however from time to time use reputable professional climbing guide services for climbing courses and climbing trips to ensure the quality of the courses.

You can always meet other local rock climbers or ice climbers to share tips, discuss gear, and plan trips and you can use our message board to exchange info or look for climbing partner or ride-sharing partners.

Please also visit our sister group The Next Adventure which also organizes rock/ice climbing or rafting/kayaking events. http://www.meetup.com/the-next-adventure/

Disclaimer of Liability

CLIMBING IS A DANGEROUS SPORT!

Involvement in rock climbing carries a significant risk of personal injury or death. CLIMB AT YOUR OWN RISK!")

Membership.create(user_id: 3, group_id: 10)
Membership.create(user_id: 8, group_id: 10)
Membership.create(user_id: 13, group_id: 10)
Membership.create(user_id: 4, group_id: 10)
Membership.create(user_id: 9, group_id: 10)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 10)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 10)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 10)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 10)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 10)

Rsvp.create(user_id: 3, event_id: 46)
Rsvp.create(user_id: 8, event_id: 46)
Rsvp.create(user_id: 13, event_id: 46)
Rsvp.create(user_id: 4, event_id: 47)
Rsvp.create(user_id: 9, event_id: 47)
Rsvp.create(user_id: 13, event_id: 47)
Rsvp.create(user_id: 4, event_id: 48)
Rsvp.create(user_id: 9, event_id: 48)
Rsvp.create(user_id: 3, event_id: 48)
Rsvp.create(user_id: 8, event_id: 49)
Rsvp.create(user_id: 9, event_id: 49)
Rsvp.create(user_id: 3, event_id: 49)
Rsvp.create(user_id: 8, event_id: 50)
Rsvp.create(user_id: 13, event_id: 50)
Rsvp.create(user_id: 14, event_id: 50)



Group.create(name: "Fat Cat Fab Lab", description: "fat cat FAB LAB is a makerspace in the West Village, Manhattan NYC. A place for learning, designing, collaborating and building.

We offer traditional and digital fabrication tools, workshops and events with an emphasis on low cost open source innovation.")

Membership.create(user_id: 14, group_id: 11)
Membership.create(user_id: 5, group_id: 11)
Membership.create(user_id: 10, group_id: 11)
Membership.create(user_id: 15, group_id: 11)
Membership.create(user_id: 1, group_id: 11)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 11)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 11)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 11)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 11)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 11)

Rsvp.create(user_id: 14, event_id: 51)
Rsvp.create(user_id: 5, event_id: 51)
Rsvp.create(user_id: 10, event_id: 51)
Rsvp.create(user_id: 15, event_id: 52)
Rsvp.create(user_id: 1, event_id: 52)
Rsvp.create(user_id: 10, event_id: 52)
Rsvp.create(user_id: 15, event_id: 53)
Rsvp.create(user_id: 1, event_id: 53)
Rsvp.create(user_id: 14, event_id: 53)
Rsvp.create(user_id: 5, event_id: 54)
Rsvp.create(user_id: 1, event_id: 54)
Rsvp.create(user_id: 14, event_id: 54)
Rsvp.create(user_id: 5, event_id: 55)
Rsvp.create(user_id: 10, event_id: 55)
Rsvp.create(user_id: 15, event_id: 55)




Group.create(name: "Write. Inspire. Repeat.", description: "'Write What You Know' - Mark Twain.

And with that, starts the 'Write, Inspire, Repeat' Workshop - a judgment-free zone where you can work for a whole hour on your novel, manuscript, poetry, etc. As storytellers, we all have gone through obstacles (procrastination, writer's block, and others), so I hope this quiet meetup can help you to continue your writing, to inspire yourself, and to maintain your perseverance.

DISCLAIMER : This meetup group is intended for growing writers at any level, who are looking for inspiration, practice with their craft, and networking with other writers. I am not an experienced writer, but this will be a nurturing environment for all of us.")

Membership.create(user_id: 3, group_id: 12)
Membership.create(user_id: 6, group_id: 12)
Membership.create(user_id: 9, group_id: 12)
Membership.create(user_id: 12, group_id: 12)
Membership.create(user_id: 15, group_id: 12)


Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 12)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 12)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 12)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 12)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 12)

Rsvp.create(user_id: 3, event_id: 56)
Rsvp.create(user_id: 6, event_id: 56)
Rsvp.create(user_id: 9, event_id: 56)
Rsvp.create(user_id: 12, event_id: 57)
Rsvp.create(user_id: 15, event_id: 57)
Rsvp.create(user_id: 9, event_id: 57)
Rsvp.create(user_id: 12, event_id: 58)
Rsvp.create(user_id: 15, event_id: 58)
Rsvp.create(user_id: 3, event_id: 58)
Rsvp.create(user_id: 6, event_id: 59)
Rsvp.create(user_id: 15, event_id: 59)
Rsvp.create(user_id: 3, event_id: 59)
Rsvp.create(user_id: 6, event_id: 60)
Rsvp.create(user_id: 9, event_id: 60)
Rsvp.create(user_id: 12, event_id: 60)



Group.create(name: "Engineers for a Sustainable World", description: "connecting people who are passionate about sustainability with research, design, and outreach projects in NYC")

Membership.create(user_id: 1, group_id: 13)
Membership.create(user_id: 4, group_id: 13)
Membership.create(user_id: 7, group_id: 13)
Membership.create(user_id: 10, group_id: 13)
Membership.create(user_id: 13, group_id: 13)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 13)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 13)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 13)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 13)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 13)

Rsvp.create(user_id: 1, event_id: 61)
Rsvp.create(user_id: 4, event_id: 61)
Rsvp.create(user_id: 7, event_id: 61)
Rsvp.create(user_id: 10, event_id: 62)
Rsvp.create(user_id: 13, event_id: 62)
Rsvp.create(user_id: 7, event_id: 62)
Rsvp.create(user_id: 10, event_id: 63)
Rsvp.create(user_id: 13, event_id: 63)
Rsvp.create(user_id: 1, event_id: 63)
Rsvp.create(user_id: 4, event_id: 64)
Rsvp.create(user_id: 13, event_id: 64)
Rsvp.create(user_id: 1, event_id: 64)
Rsvp.create(user_id: 4, event_id: 65)
Rsvp.create(user_id: 7, event_id: 65)
Rsvp.create(user_id: 10, event_id: 65)



Group.create(name: "Free Yoga Classes", description: "This is a group for folks who are interested in teaching or attending unpaid yoga classes. Novice teachers and students are more than welcome. We can organize in homes or in public spaces. Members of this group should be interested in yoga as a spiritual practice versus as a business or financial opportunity. There are no rules except that everything stays free!")


Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 14)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 14)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 14)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 14)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 14)

Membership.create(user_id: 2, group_id: 14)
Membership.create(user_id: 5, group_id: 14)
Membership.create(user_id: 8, group_id: 14)
Membership.create(user_id: 11, group_id: 14)
Membership.create(user_id: 14, group_id: 14)

Rsvp.create(user_id: 2, event_id: 66)
Rsvp.create(user_id: 5, event_id: 66)
Rsvp.create(user_id: 8, event_id: 66)
Rsvp.create(user_id: 11, event_id: 67)
Rsvp.create(user_id: 14, event_id: 67)
Rsvp.create(user_id: 8, event_id: 67)
Rsvp.create(user_id: 11, event_id: 68)
Rsvp.create(user_id: 14, event_id: 68)
Rsvp.create(user_id: 2, event_id: 68)
Rsvp.create(user_id: 5, event_id: 69)
Rsvp.create(user_id: 8, event_id: 69)
Rsvp.create(user_id: 14, event_id: 69)
Rsvp.create(user_id: 2, event_id: 70)
Rsvp.create(user_id: 5, event_id: 70)
Rsvp.create(user_id: 8, event_id: 70)



Group.create(name: "Futsal Across America", description: "FUTSAL ACROSS AMERICA pick up games: all week, many locations, put your shoes on and play with us It is fun, social and healthy  What to bring: indoor shoes, two t-shirts: one white one Red. Fee: 10 dollars per player per  game. Must RSVP through Paypal @ jaime@worldsoccerorg.com Only 10 players per game, no subs. . Arrive early for your game so you can warm up and we can explain the rules. spread the word. see you there. 24 hour cancellation notice for refund to be approved.

Looking forward to seeing you there

Tuesdays at William O'shea Education Complex; 100 west 77th street. Between Columbus and Amsterdam.

Tito Puente, Park West, Park West HS 525 50th street, ny ny. ")

Membership.create(user_id: 2, group_id: 15)
Membership.create(user_id: 6, group_id: 15)
Membership.create(user_id: 10, group_id: 15)
Membership.create(user_id: 14, group_id: 15)
Membership.create(user_id: 15, group_id: 15)

Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 15)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.backward(14), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 15)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 15)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 15)
Event.create(name: Faker::StarWars.quote, event_time: Faker::Time.forward(60), location: Faker::Address.street_name, description: Faker::ChuckNorris.fact, group_id: 15)

Rsvp.create(user_id: 2, event_id: 71)
Rsvp.create(user_id: 6, event_id: 71)
Rsvp.create(user_id: 10, event_id: 71)
Rsvp.create(user_id: 14, event_id: 72)
Rsvp.create(user_id: 15, event_id: 72)
Rsvp.create(user_id: 10, event_id: 72)
Rsvp.create(user_id: 14, event_id: 73)
Rsvp.create(user_id: 15, event_id: 73)
Rsvp.create(user_id: 2, event_id: 73)
Rsvp.create(user_id: 6, event_id: 74)
Rsvp.create(user_id: 15, event_id: 74)
Rsvp.create(user_id: 2, event_id: 74)
Rsvp.create(user_id: 6, event_id: 75)
Rsvp.create(user_id: 10, event_id: 75)
Rsvp.create(user_id: 14, event_id: 75)
