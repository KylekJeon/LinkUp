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
Discussion.destroy_all
Comment.destroy_all


user1 = User.create!(username: "guest", password: "guest123", email: "dcolson@gmail.com", first_name: "Daniel", last_name: "Colson")
user2 = User.create!(username: "user2", password: "password", email: "treeshadow@gmail.com", first_name: "Rahul", last_name: "Doshi"  )
user3 = User.create!(username: "user3", password: "password", email: "edibledefended@gmail.com", first_name: "Stephen", last_name: "Mauer")
user4 = User.create!(username: "user4", password: "password", email: "volunteercapitalist@gmail.com", first_name: "Jonathan", last_name: "Slawitsky")
user5 = User.create!(username: "user5", password: "password", email: "banjosrudhall@gmail.com", first_name: "Peter", last_name: "Tascio")
user6 = User.create!(username: "user6", password: "password", email: "taylorracehorse@gmail.com", first_name: "Sean", last_name: "Garner" )
user7 = User.create!(username: "user7", password: "password", email: "spottyvacuole@gmail.com", first_name: "Kevin", last_name: "Zhang" )
user8 = User.create!(username: "user8", password: "password", email: "aerobicsinvitation@gmail.com", first_name: "Kenneth", last_name: "Chen" )
user9 = User.create!(username: "user9", password: "password", email: "hydrocarbonreed@gmail.com", first_name: "Chris", last_name: "Shay" )
user10 = User.create!(username: "user10", password: "password", email: "crayongoose@gmail.com", first_name: "Duncan", last_name: "Beebe" )
user11 = User.create!(username: "user11", password: "password", email: "sunnybacon@gmail.com", first_name: "Leslie", last_name: "Brown" )
user12 = User.create!(username: "user12", password: "password", email: "bipolarshampoo@gmail.com", first_name: "Bethany" , last_name: "Hyland"  )
user13 = User.create!(username: "user13", password: "password", email: "jazzcorky@gmail.com", first_name: "Cici", last_name: "Wen" )
user14 = User.create!(username: "user14", password: "password", email: "blisterhypnosis@gmail.com", first_name: "Allie", last_name: "Harris"  )
user15 = User.create!(username: "user15", password: "password", email: "springsremain@gmail.com", first_name: "Amy", last_name: "Fang"  )




group1 = Group.create!(name: "Disruptive Digital Marketing", description: "There are two simple ways to enjoy this group: You either have something to share that is truly new and disruptive with regards to any of the many aspects of Digital Marketing... or you are eager to learn *what else* is out there that you may be missing, or that others are putting into practice.", category: "career & business")

Membership.create!(user: user1, group: group1)
Admin.create!(user: user1, group: group1)
Membership.create!(user: user3, group: group1)
Membership.create!(user: user5, group: group1)
Membership.create!(user: user7, group: group1)
Membership.create!(user: user9, group: group1)

discussion1 = Discussion.create!(group: group1, title: Faker::ChuckNorris.fact)
Comment.create!(user: user1, discussion: discussion1, body: Faker::ChuckNorris.fact)
Comment.create!(user: user5, discussion: discussion1, body: Faker::ChuckNorris.fact)
Comment.create!(user: user7, discussion: discussion1, body: Faker::ChuckNorris.fact)

discussion2 = Discussion.create!(group: group1, title: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion2, body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion2, body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion2, body: Faker::ChuckNorris.fact)

discussion3 = Discussion.create!(group: group1, title: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion3 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion3 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion3 , body: Faker::ChuckNorris.fact)



event1 = Event.create!(name: "Discover “Always on Marketing” and the “Journey Distribution Flow”" , event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "For our very last meetup of the year we’ve pulled out all the stops and have planned an exciting evening just for you. Join us at a brand new location, Work-Bench, to discuss “The End of Campaign-Driven Marketing and the Advent of Always on” with a special guest from The Big Willow, Tony Lombardo, Digital Marketing director at Commvault.

Sweetspot Intelligence CEO, Sergio Maldonado, will also be sharing the idea behind the “Journey Distribution Flow”, an alternative to marketing attribution and explaining how you can use it to understand the impact of your short-term and long-term initiatives on brand performance.

As always, there will be plenty of opportunities to talk about the latest trends, as well as network with fellow NYC disruptive digital marketers and analysts.

RSVP to reserve your spot today! We’re looking forward to seeing you there!", group_id: group1.id)
event2 = Event.create!(name: "Web Analytics Wednesday: A Review", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "A quick and fun review of everything that has happened in the #measure industry in recent months: Trends, technologies, events, discoveries... all of it. ", group_id: group1.id)
event3 = Event.create!(name: "Beat the heat with fellow Disruptive Digital Marketers and Analysts June 10th!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "It's that time again! Welcome in the summer with fellow NYC disruptive digital marketers with some cool drinks and great conversation.

Join us at the Houndstooth Pub (8th Ave and 37th St) at 6:30PM. All drinks and snacks will be provided by Sweetspot Intelligence.

We will run this parallel to Web Analytics Wednesday, so you will certainly meet Digital Analysts, Digital Managers and Digital Marketing professionals. ", group_id: group1.id)
event4 = Event.create!(name: "Disruptive Digital Marketing Trends & Analytics Success", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "It's been a while, but we are happy to announce that we are running another exciting Disruptive Digital Marketing Meetup!

As always, this event is open to digital analytics and marketing professionals alike. So join us on Wednesday November 18th for for a fun evening of networking and a couple of drinks. Come share your biggest challenges and learn about how your peers are reacting to disruptive trends.

This time around we are lucky enough to have Adam Greco join us from Web Analytics Demystified. You’ll have the chance to “Ask Adam Anything about Being Successful in Web Analytics” in an interactive session.

The Sweetspot team will also be there to answer any questions on performance reporting and best practices in dashboard design.

", group_id: group1.id)
event5 = Event.create!(name: "Digital Analytics & Executive Reporting", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "General idea: To just meet other Digital Marketing & Digital Analytics professionals, discussing latest industry news and trends.

", group_id: group1.id)

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




group2 = Group.create!(name: "Alternative To The Bar", description: "Our Group Mission is:

1. Bring together a group of people who love to explore NYC. Our group is dedicated especially to fun activities outside of the typical NY bar scene(which means many times alcohol and a bar might be present, we dont want to totally discriminate, haha). There is so much to do in New York and we plan to bring you best of a variety of events.

2. If we can't host/plan and event, we still want to be your source for great things to do in NYC. We will be sending out a daily email of the Top Things To Do each day(most will be free too!). The email will also be archived on our message board so people can comment and gather there. If we cant host the event ourselves, we still hope members can reach out and get together. ****Please not if you do not wish to receive our daily email, you can adjust your settings so you do not get the email ***

We are all about fun, social, and networking. Events will be in a melting pot of different things, kinda like our great city.  Look forward to meeting you!

", category:"social")

Membership.create!(user: user11, group: group2)
Membership.create!(user: user13, group: group2)
Membership.create!(user: user15, group: group2)
Membership.create!(user: user2, group: group2)
Membership.create!(user: user4, group: group2)

discussion4 = Discussion.create!(group: group2, title: Faker::ChuckNorris.fact)
discussion5 = Discussion.create!(group: group2, title: Faker::ChuckNorris.fact)
discussion6 = Discussion.create!(group: group2, title: Faker::ChuckNorris.fact)

Comment.create!(user: user11 , discussion: discussion4 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion4 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion4 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion5 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion5 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion5 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion6 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion6 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion6 , body: Faker::ChuckNorris.fact)




event6 = Event.create!(name: "Waiter Can I Have... Some Holiday Fun Event!", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "2016 is coming to an end and WAITER CAN I HAVE wants you to have a fantastic end of year celebration!
Don't know what to drink for Christmas with the family? (Yes, I know egg nog... but aren't you curious for something new?)
Don't know what to drink for New Year's this year? Eager to pop something other than that Moet bottle your significant other or best friend brought?
Well Waiter Can I Have is bringing you fresh, new ideas for your holiday weekend!
We'll be offering you
-5 Different Christmas Drinks
-5 Different Champagnes
-Food!! (We don't want you leaving hungry)
-Giveaways (For those of you who came previously, you know you loved our surprise giveaways!!)
And Lastly Music!
Yes, we're going to start your New Year's celebration early with some great music so you can dance and mingle with friends new and old!! Why spend hundreds of dollars for a great time? ", group_id: group2.id)
event7 = Event.create!(name: "Holistic Speakers' Series & Holiday Bazaar", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Join us for a free holistic speakers' series & holiday bazaar at the New York Open Center ! Come by enjoy holistic services, make new friends and relax.Bring your friends and family for this special event. Don't miss this enjoyable event. Free Program, but registration is must as space is limited.", group_id: group2.id)
event8 = Event.create!(name: "Professional Comedy Showcase for TV Taping", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "This Monday comedian Charles McBee records his half-hour comedy submission for Comedy Central. Charles is a regular on Fox's Laughs and has been featured in New York's Comedy Festival as well as clubs and colleges across the country. The V Spot restaurant serves Organic Vegan cuisine with a Latin flair. The show will also feature other amazing comics from comedy central and MTV. We'll meet up and get to know each other before we start the show.

", group_id: group2.id)
event9 = Event.create!(name: "NUTRITION AND MOVEMENT", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Nutrition and Movement for Winter Workshop will provide you with all the necessary knowledge and tips you need for the season.

You will walk away with your personal blueprint for winter health.", group_id: group2.id)
event10 = Event.create!(name: "South African wine and food: Mzansi at Madiba!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Eat, drink, be merry and support education in South Africa on 12/7 with Inkulululeko (www.inkululeko.org) - a nonprofit organization that serves motivated learners in Grahamstown, South Africa.

Join awesome people for an awesome night of drinks, food, artwork and conversation. ", group_id: group2.id)

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


group3 = Group.create!(name: "L&D in NYC", description: "Learning & Development, organizational learning, learning in the workplace... it goes by many names, but the goal is always the same: helping people in your organization learn more, learn faster, and learn better. If you lead or are part of the L&D department at your company, this group is for you. If the work you do helps support and enable L&D departments at other organizations, this group is for you. If you are just passionate about or fascinated by helping working adults learn within an organization, this group is for you. We meet 2 or 3 times each quarter to share challenges, solutions, ideas, and insights that help us help the people we serve learn better.
", category:"career & business")



Membership.create!(user: user6, group: group3)
Membership.create!(user: user8, group: group3)
Membership.create!(user: user10, group: group3)
Membership.create!(user: user12, group: group3)
Membership.create!(user: user14, group: group3)

discussion7 = Discussion.create!(group: group3 , title: Faker::ChuckNorris.fact)
discussion8 = Discussion.create!(group: group3 , title: Faker::ChuckNorris.fact)
discussion9 = Discussion.create!(group: group3 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion7 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion7 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion7 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion8 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion8 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion8 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion9 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion9 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion9 , body: Faker::ChuckNorris.fact)



event11 = Event.create!(name: "Building a Learning Architecture and the Strategies Needed to be Successful", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "According to Bersin, A “learning architecture” is an organization’s unique map of agreed-upon learning needs, learning strategies and delivery strategies for all of its training. This approach gives designers, trainers and managers a clear view of what types of problems the organization will solve, how they will solve them, what tools they need and strategies they will employ to be successful.

Learning strategies deliberately limit an organization’s options by deciding how and where the training organization will focus its efforts (& budget) – and it builds upon the organization’s culture and history of learning.  What’s the best way to keep your employees engaged? Keep them learning!

In this session we will address why a deliberate learning architecture can help your organization understand how like minded professionals employed strategies that supported their employees and organizational objectives concurrently.

Come network with fellow learning leaders for another World Cafe event.  The discussion will focus on best practices, work place examples and what learning architecture & strategies have been employed for success!  Check out our last event at McGraw-Hill for a flavor of what to expect.

Special thanks to our member Vy Nguyen for making the wonderful space at WeWork Grand Central available.  Identification will be required in the lobby to check-in. ", group_id: group3.id)
event12 = Event.create!(name: "Setting Up 1st Time Leaders for Success!", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Too often new leaders are figuratively thrown into the pool and asked to sink or swim — either they figure it out on the way or they fail miserably, sometimes crushing the potential of a great leader.

Stepping up as a manager is one of the most courageous decisions in your career, but more than 4 out ot 5 first-time leaders become frustrated, anxious, and uncertain about their place in the organization. Without a supportive well-defined path, most first-time managers are left at it on their own.  So what are the must-have skills all new leaders need?

Skills such as interpersonal dexterity, emotional agility, and communication savvy are as important as learning to let go of old ways of thinking, and relaxing into the role.

Come join your fellow learning leaders for another World Cafe event to discuss best practices, work place examples and a conversation around what sets up new leaders for success. Check out our last event at Google for a flavor of what to expect.  ", group_id: group3.id)
event13 = Event.create!(name: "The Power of Practice ", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "No one learned to play the piano by reading a book or watching a video. At some point they had to put their fingers on a real keyboard and then practice... over and over and over.

Is workplace learning really any different? Whether you're training on sales skills, or leadership, or customer service, etc. the knowledge must be applied on the job. People need to put those skills to use and then practice them... over and over and over.

What's the role of L&D after the training has been delivered, or the online course has been shipped? If we are being tasked with developing fluency, mastery, and true capacity, we can't stop at delivery. How might we support the practice (and reflection) of those we serve?

Come join your fellow learning leaders for another World Cafe event on the topic of Practice. Check out our last event at Google for a flavor of what to expect. ", group_id: group3.id)
event14 = Event.create!(name: "Building a Learning Culture", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "We are excited to announce our next Meetup event which will be at the Google office in Chelsea Market. Even better, we will use their newly designed training studio space to dive into our topic of the month, learning culture -  what does that really mean, how does this impact our training approach, and how to kick-start/hack/nurture one at your company.

So bring your own ideas and challenges around learning cultures and get ready to share with and learn from other L&D leaders like you.

", group_id: group3.id)
event15 = Event.create!(name: "L&D Happy Hour", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "In 2016 we're going to try and hold one event each month, alternating a World Cafe event (like last month) and a happy hour (like this month). So come as you are, bring a friend, and enjoy some time with L&D colleagues from across the city.

We're going to keep it close to major transit hubs, which means we'll be in midtown. So if you have any recommendations on great bars or lounges in the area, please share. We'll lock down the location a week before the event.

Looking forward to some great conversation!  ", group_id: group3.id)

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




group4 = Group.create!(name: "Social Men & Women", description: "We are a group of men and women who are ready to have a good time and meet new people. This group is for people in their 20s, 30s, 40s and 50s.

This group is also for members in the New York Tri-State area. Our fun social events include happy hours, dinners, trips to museums, movie nights, themed parties, professional social mixers, BBQs, clubbing, picnics, boat cruises, speed dating, concerts, and many more fun activities to bring all singles together.

Come join us for some fun time, and get to know us! We will ensure that everyone feels welcome and will get to meet other people in the city. Feel free to contact the organizer to share any thoughts, ideas or suggestions as this group is here to serve you. Let us have a jolly good time!!!", category:"social")



Membership.create!(user: user2, group: group4)
Membership.create!(user: user4, group: group4)
Membership.create!(user: user6, group: group4)
Membership.create!(user: user8, group: group4)
Membership.create!(user: user10, group: group4)

discussion10 = Discussion.create!(group: group4, title: Faker::ChuckNorris.fact)
discussion11 = Discussion.create!(group: group4, title: Faker::ChuckNorris.fact)
discussion12 = Discussion.create!(group: group4, title: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion10 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion10 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion10 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion11 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion11 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion11 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion12 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion12 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion12 , body: Faker::ChuckNorris.fact)



event16 = Event.create!(name: "Night Party", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Get to meet a fun and diverse group of people in this enjoyable venue located in the meatpacking district.

Do mention Rory to the door person for free entry all night long!

Dress code is business casual.

Feel free to come solo or with your friends.", group_id: group4.id)
event17 = Event.create!(name: "FESTIVUS HAPPY HOUR WITH OPEN BAR FOLLOWED BY LATE NIGHT CLUBBING!", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Feel free to come early evening or late evening.

There will be DJs playing top 40 music all night long!

There will be an open bar from 6pm-7pm.

The venue also serves delicious food early evening.

Get to meet a fun and diverse group of people.

Feel free to invite your friends for an enjoyable time.

We look forward in seeing you.

Contact us if you have further questions.", group_id: group4.id)
event18 = Event.create!(name: "Private Group Tour ", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Join us for an extraordinary look into the rich history and breathtaking artistry of New York's most famous landmark. Your journey begins over 80 years ago with John D. Rockefeller Jr.'s unwavering vision for a cultural center and touches upon all the great works of art and architecture that comprise it today. An expert historian will guide you through the Center’s most significant buildings, gardens and spaces. Follow along with your own personal headset and enjoy this uninterrupted account through a closed circuit connection. Rockefeller Center will never look the same again!", group_id: group4.id)
event19 = Event.create!(name: "Rubin Museum of Art Private Guided Tou", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "The tour starts at 2:00 pm, however we will have a pre-mingle starting at 12:30 pm at a local bar/pub close to the museum (location emailed to address used to pay for ticket).

We will then introduce you to the other attendees and give you admission tickets to the museum.

Our tour guide will give us about an hour  tour providing a general overview of the Museum Highlights. Afterwards, we can explore the other great things the museum has to offer on our own. Your ticket includes:", group_id: group4.id)
event20 = Event.create!(name: "Deep Root Sessions", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "There will be many artists from Europe, aerialists, dancers and performers putting on the best show!

For the first hour of the event from 9pm to 10pm enjoy the FREE OPEN BAR courtesy of American Barrels which will be sponsoring the event.

Many thanks to our friends from Deep Root Records for putting together this massive night.", group_id: group4.id)

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

discussion13 = Discussion.create!(group: group5 , title: Faker::ChuckNorris.fact)
discussion14 = Discussion.create!(group: group5 , title: Faker::ChuckNorris.fact)
discussion15 = Discussion.create!(group: group5 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion13 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion13 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion13 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion14 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion14 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion14 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion15 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion15 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion15 , body: Faker::ChuckNorris.fact)



event21 = Event.create!(name: "Can I kick it? (Yes, you can!)", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Boxing month is gone, Kickboxing month is here!

", group_id: group5.id)
event22 = Event.create!(name: "Punchgiving", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "We will do turkey based drills, and also some turkey self defense in case the birds turn against us this year.", group_id: group5.id)
event23 = Event.create!(name: "MMA fieltrip IV UFC 205", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "McGREGOR vs ALVAREZ at O'Flanagans Bar. Showing on our 13 FLAT SCREENS and 2 large PROJECTION SCREENS! $10 cover at the door. Call to make reservations!!!", group_id: group5.id)
event24 = Event.create!(name: "Boxing 101 at the 101st Training Session in the PARK!!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "The focus of next month is going to be boxing (for drills), so this meetup we are going to start with boxing 101.

It looks like it might be cold on the day of, so make sure to bring clothes for when we are done moving around. If the temperatures keeps going down we will start looking for a space to rent, if you have any ideas/places let me know.

", group_id: group5.id)
event25 = Event.create!(name: "Training Session in the PARK!!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Coming features:
- More structured workouts and drills before sparring
- Official cross training days with other martial arts groups
- Group visits to gyms/dojos that have open mat days
- WarriorMaker: augmented reality martial arts game close to beta release.

", group_id: group5.id)

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



group6 = Group.create!(name: "La Maison d'Art", description: "La Maison d'Art is an artistic group focused on Art Exposure in Harlem and connecting Art lovers with Artists.

", category:"arts")



Membership.create!(user: user7, group: group6)
Membership.create!(user: user9, group: group6)
Membership.create!(user: user11, group: group6)
Membership.create!(user: user13, group: group6)
Membership.create!(user: user15, group: group6)


discussion16 = Discussion.create!(group: group6 , title: Faker::ChuckNorris.fact)
discussion17 = Discussion.create!(group: group6 , title: Faker::ChuckNorris.fact)
discussion18 = Discussion.create!(group: group6 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion16 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion16 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion16 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion17 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion17 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion17 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion18 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion18 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion18 , body: Faker::ChuckNorris.fact)


event26 = Event.create!(name: "Opening night reception - photo exhibit", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Join us for the first view of MATCHES, a solo photo exhibit by Justin Hoch in collaboration with our upcoming documentary Common Ground: Bridging Cultures by Stephanie Calla & Will Vaultz", group_id: group6.id)
event27 = Event.create!(name: "Sugar Hill Market", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "
Uber cool insider website Thrillist and AM New York has listed Sugar Hill Market as one of the best events in NYC to attend for 2015 but many uptowners already know that! The HB curated boutique market has had some great word of mouth and also awesome shout outs by New York Magazine, Time Out, and New York Daily News in the past. The local popup also features new artwork exhibits hanging on the gallery walls which have been popular with collectors visiting the market.", group_id: group6.id)
event28 = Event.create!(name: "4th Annual Women Empowerment Movement Event", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "NETWORK. DISCUSS. LEARN. EMPOWER.

Let's get together for a special evening of NETWORKING, EMPOWERMENT AND FUN! Join the PANEL DISCUSSION on Business, Passion & Purpose, and Advocacy! Our wonderful panelists include women making waves in the realm of media, business, and wellness: - TASTY KEISH, Broadcaster & Founder of TK in the AM/Bondfire Radio

- HIPATIA LOPEZ, Inventor & Owner of Empanada Fork

- MADELINE McCRAY, Actress & Co-Founder of New Legacy Leaders

They are ready to share their knowledge and experiences with you! Join the conversation with us on Sat, May 7th for the 4th Annual Women Empowerment Event!

This event is for anyone ready to start conversations, network, and share ideas and stories about how empowerment can motivate and ignite positive change in women, individually and collectively, to continue to strengthen our mark and significance in society. Men and youth over 12 years old are highly encouraged and welcome to attend.", group_id: group6.id)
event29 = Event.create!(name: "3rd Annual Birthday Tribute to Duke Ellington by Elise Wood Quartet", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "As part of Jazz Appreciation Month & our Birthday Tribute to great Jazz musicians, La Maison d'Art Gallery will present the 3rd Annual Tribute to DUKE ELLINGTON.

Elise Wood Quartet once again to pay homage to a legendary great Jazz musician - the one and only Duke Ellington! featuring;

Ian McDonalds, Piano
Harvie S, Bass
Elise Wood, flute & alto flute
Tony Hewitt, vocals
& Special guests

Suggested Donation: $15
Complimentary Wine bar and appetizers
Limited seating - join us promptly

Where else to celebrate his birthday than Harlem, where his music became so famous in the 20's. He defined that generation and gave it a sound. Duke just happened to be there at the right time of the Harlem Renaissance and was the best at what he did. The Harlem Renaissance was led by intellectuals of every field and Duke was one of them.

Selecting from his repertoire -that is internationally heralded as one of the greatest in Jazz - the Quartet will play only his compositions. Each musician - a bandleader in his own right - will be featured in the one hour concert.", group_id: group6.id)
event30 = Event.create!(name: "Join us!
An Evening of Zouk Music with Perle Lama", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Join us at La Maison d'Art Gallery for an Intimate Concert by famous Zouk Singer, Perle Lama in NY for only a few concert dates.

", group_id: group6.id)

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


discussion19 = Discussion.create!(group: group7, title: Faker::ChuckNorris.fact)
discussion20 = Discussion.create!(group: group7, title: Faker::ChuckNorris.fact)
discussion21 = Discussion.create!(group: group7, title: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion19 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion19 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion19 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion20 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion20 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion20 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion21 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion21 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion21 , body: Faker::ChuckNorris.fact)


event31 = Event.create!(name: "How Can We Do as Much Good as Possible?", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "How can do as much good as possible for us, our family, friends and communities. For a more beautiful, just and sustainable world, as well. This will include practical ways you can apply this to your life starting now.", group_id: group7.id)
event32 = Event.create!(name: "What is the True Source of Happiness", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "This conversation is structured around the questions and answers from Pat Love, Ph.D. and Jon Carlson, Ph.D.'s TV Series LOVE:  What Everyone Need to Know shown CUNY TV every Tuesday at 10PM, TV Channel 25-3.   http://www.cuny.tv/show/love/PR1010105

Bring your questions and your collective wisdom. (We will watch this recorded episode together during the first hour of this meetup.)", group_id: group7.id)
event33 = Event.create!(name: "Balancing Information Transparency vs Security in Business Processes", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Information security is important in order to control risk, but it has to be balanced with information transparency. This is one of the largest drivers of process optimization. At this meetup we will discuss the benefits and process mechanisms that rely on information transparency, and why a lack of transparency can be so disruptive to good process design.

This meetup follows the format of an informal discussion based on the topic overview (led by Sam) rather than a formal lecture.

", group_id: group7.id)
event34 = Event.create!(name: "FRIEND & FOE: When to Cooperate, Compete, Succeed at Both", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "What does it take to succeed? This question has fueled a long-running debate. Some have argued that humans are fundamentally competitive, and that pursuing self-interest is the best way to get ahead. Others claim that humans are born to cooperate and that we are most successful when we collaborate with others. In their book FRIEND & FOE, Adam Galinsky and Maurice Schweitzer argue that this debate misses the mark. Rather than being hardwired to compete or cooperate, we have evolved to do both. In every relationship, from co-workers to friends to spouses to siblings we are both friends and foes. It is only by learning how to strike the right balance between these two forces that we can improve our long-term relationships and get more of what we want. Their book is a guide for navigating our social and professional worlds by learning when to cooperate as a friend and when to compete as a foe—and how to be better at both.", group_id: group7.id)
event35 = Event.create!(name: "SHSNY Movie Night: Much Ado About Nothing", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Forget the disaster of the election! Forget His Orangeness! Let’s have some holiday fun with probably the best-ever, joyous filming (1993) of a Shakespeare comedy. With Kenneth Branagh, Emma Thompson, Denzel Washington, Michael Keaton, Keanu Reeves and Kate Beckinsale (her film debut), and a host of great Brit actors.

", group_id: group7.id)

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


discussion22 = Discussion.create!(group: group8 , title: Faker::ChuckNorris.fact)
discussion23 = Discussion.create!(group: group8 , title: Faker::ChuckNorris.fact)
discussion24 = Discussion.create!(group: group8 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion22 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion22 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion22 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion23 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion23 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion23 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion24 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion24 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion24 , body: Faker::ChuckNorris.fact)


event36 = Event.create!(name: "Using Stories to Succeed in Your Interview", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "How many times have we interviewed and not been invited back? Of course, this is often not our fault. Nevertheless, there is much that we can do to increase our chance of getting to the short list and getting to the offer. Join coach Win Sheffield for this workshop. Learn how to support an ineffective interviewer, how to convey your value by talking about your achievements and how to be invited back.", group_id: group8.id)
event37 = Event.create!(name: "How To Market Your Skills For 2017", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "David Lees explains how Personal Core BrandingSMcan be the key to standing out from your competition to land a job. Connect with who you are and what makes you unique.
Learn:

• How your Personal Core BrandSM can help you gain a competitive edge

• How to identify what’s unique about yourself to gain further insights to your specific strengths and distinctive qualities

• How to use your Personal Core BrandSM on your resume, in an elevator pitch, in social media, and when interviewing

• How to succinctly showcase yourself when communicating your success stories with others", group_id: group8.id)
event38 = Event.create!(name: "​Staying Motivated Throughout the Job Search Process", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Looking for a job can be a long, arduous journey that requires much time and patience, especially in this economy, to see results. Staying positive and motivated throughout the process can make you a less stressed and a more effective applicant, which can in turn accelerate the outcomes you desire.
Kristina Leonardi helps you re-evaluate your overall career and job search strategy to reduce stress.", group_id: group8.id)
event39 = Event.create!(name: "Building a Brand to Attract Employers", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Why run after employers? Why not have them run after you?

In this interactive presentation, Dr. Bruce Hurwitz, president of Hurwitz Strategic Staffing, Ltd., explains how, using free media, he was able to secure over 600 media citations, appearing in 400 publications, across the United States and in 23 foreign countries. The discussion includes LinkedIn, Help A Reporter, Twitter, YouTube, and BlogTalkRadio.", group_id: group8.id)
event40 = Event.create!(name: "Preparing for Your Career's Next Leap with Social Media Marketing", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "John Crant shows how to lay the groundwork to take your career to the next level, to get on the 'short list' for that next promotion, and to market your achievements continually.

The discussion includes:

Perception Is Reality: So, Change Reality
Credit, Where Credit Is Do –and How To Get Yours
Sharing Accolades Shines the Light on You Too
Be Seen as a Leader, By Being a Leader
Manage Your Career 'Marketing' Materials: Using LinkedIn, Groups, Blogs & More
Your Signature Block Can Speak Volumes
Integrating Your Career Strategies Into Your Messaging", group_id: group8.id)


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


group9 = Group.create!(name: "Acoustic Music in the Park", description: "Play acoustic rock, pop, folk, and blues music, 60s to present in the open air. Open to all levels. Share ideas, talent, and fun. Meet other musicians who love acoustic music.", category:"music")


Membership.create!(user: user11, group: group9)
Membership.create!(user: user15, group: group9)
Membership.create!(user: user2, group: group9)
Membership.create!(user: user7, group: group9)
Membership.create!(user: user12, group: group9)


discussion25 = Discussion.create!(group: group9 , title: Faker::ChuckNorris.fact)
discussion26 = Discussion.create!(group: group9 , title: Faker::ChuckNorris.fact)
discussion27 = Discussion.create!(group: group9 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion25 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion25 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion25 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion26 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion26 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion26 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion27 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion27 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion27 , body: Faker::ChuckNorris.fact)



event41 = Event.create!(name: "Acoustic Based Open Mic", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "The Best  Early Start Open Mic Around! Thank You Mike Walter Joe and all our Supporters at G&G. Great place, Great Food, Great Beer and Gifts for Beer Lovers.

Be careful about the GPS and the GOOGLE MAPs (If U haven't been yet) They may send U to Spring Valley! Take the Phone Number in case Your lost. (845)[masked]

Format The Same and Our Fearless Leader Jeff will Kick off the Night for us. We've been doing 3 tunes  and a Jam at the end of the night if there's time.

All Guitars and Instruments Welcome. Solid or Hollow Bodies, and Keyboards, Percussion  too!", group_id: group9.id)
event42 = Event.create!(name: "Open Mic On Stage", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Both Electric and Acoustic Acts Are Welcome  Thursdays! 7:00 PM til 12ish  Acoustic Folks, they like us opening with acoustics for the patrons having dinner so bring it on. It's great to Bring the Volume down between sets as well. The Food is Great and there's a good selection of Beers and Bourbon! We're Jamming Too!", group_id: group9.id)
event43 = Event.create!(name: "No Particular Place to Go ", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: " Looking for a few guitar players and other musicians to round out the jam. I'll be adding people off the wait list that are non-guitar players.  Please only respond if you're sure you can make it, don't take a spot if you're not. We'll take turns leading a song so bring  copies of anything you want to play (nothing to complicated and easy to follow).  Any non players or singers that want to hang out and listen or sing need not respond on site, just message me separately and I'll email you back.  Directions will be emailed prior to the meetup. ", group_id: group9.id)
event44 = Event.create!(name: "Songwriting Workshop", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "This meetup will be a songwriting workshop for the songwriters in the group. Bring along a completed song or something your working on. Play your song and get some feedback, or not if you so desire. If you can, bring along copies to pass around.  A fun day of collaboration and original music. Directions will be emailed prior to the meetup. ", group_id: group9.id)
event45 = Event.create!(name: "Blind Blake - Fingerstyle Acoustic Blues", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "This Meetup is for the Fingerstyle guitar players, specifically acoustic blues in the style of Gary Davis, Blind Blake, Jorma, Dave Van Ronk etc. It will be a fingerstyle song circle format, each taking a turn playing a song in the acoustic blues format. This is not a chord strumming jam like other meetups, but rather a small intimate, individual open mic of sorts of fingerpicking acoustic blues. So if you fingerpick and play in this particular genre, this Meetup is for you. Good opportunity to discuss music and exchange ideas and licks and play these tunes in front of others. Seats are limited so only respond if your sure you can make it.", group_id: group9.id)

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

discussion28 = Discussion.create!(group: group10 , title: Faker::ChuckNorris.fact)
discussion29 = Discussion.create!(group: group10 , title: Faker::ChuckNorris.fact)
discussion30 = Discussion.create!(group: group10 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion28 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion28 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion28 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion29 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion29 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion29 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion30 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion30 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion30 , body: Faker::ChuckNorris.fact)



event46 = Event.create!(name: "Climbing at the Cliffs", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "If you have never climbed before, we encourage you to take the Climbing 101 class there before attending the meetup. We get a discounted price of $25 for the class (that's 50% Off original price if you do it the same day as the meet up and has to be scheduled in advance with them).This will also cover your day pass + gear for the day.Unfortunately we can't teach you how to belay or let you try to belay at the gym if you are not belay certified yet. We leave the teaching to the experts.  Check out Cliff's website for more details.  What to wear - comfortable clothes (think yoga).

", group_id: group10.id)
event47 = Event.create!(name: "Monthly Meet and Greet", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Our first meet and greet get-together for the upcoming winter season!

Come out climb with us and meet your fellow Rock and Ice climbers!

This will be a great opportunity to find out what this group is about, meet the other people in the group, and start making plans for outdoor climbing trips (local and abroad).
We would also like to hear inputs and suggestions among our members on how we can improve our meetups and as a community moving forward!

Everyone is welcome!

", group_id: group10.id)
event48 = Event.create!(name: "Weekend Rock Climbing", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "If you decide to stick with the sport, please peruse our message boards for good deals on climbing shoes and other gear.  Also if you find this group invaluable, please donate and pay your voluntary membership due ;) the Organizers will love you more ;).
", group_id: group10.id)
event49 = Event.create!(name: "Midweek Climbing at Brooklyn Boulders", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Notice to newcomers: You need to pass a belay certification. If you had belayed before, the test takes couple of minutes. If you need a refresher, a test partner or belay partner, please see feel free to see me. I usually get to the gym around 6pm, and either boulder at the entrance wall or top-rope in the main room. I post a comment what I'm wearing that day the afternoon of.", group_id: group10.id)
event50 = Event.create!(name: "Weekend Rock Climbing Partnering and Carpooling ", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "This meetup is to facilitate carpooling and/or partnering. There is no official group climbing, but we usually end up sharing ropes if top-roping and stopping in town for dinner/drinks after the climb (if majority goes to the Gunks). Please note that this is NOT an official rock climbing event and we are not organizing the event nor are responsible for anything other than helping our members to carpool and/or find partners. ", group_id: group10.id)

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



group11 = Group.create!(name: "Beyond Adventure", description: "I started this group with a bunch of friends that I met in other hiking, adventure and outdoor meetup groups. We all felt like there was something else out there and wanted to push the limits of what we could do. While we will always have the core events, we can now explore adventure beyond.", category:"outdoor adventures")

Membership.create!(user: user14, group: group11)
Membership.create!(user: user5, group: group11)
Membership.create!(user: user10, group: group11)
Membership.create!(user: user15, group: group11)
Membership.create!(user: user1, group: group11)
Admin.create!(user: user1, group: group11)

discussion31 = Discussion.create!(group: group11 , title: Faker::ChuckNorris.fact)
discussion32 = Discussion.create!(group: group11 , title: Faker::ChuckNorris.fact)
discussion33 = Discussion.create!(group: group11 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion31 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion31 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion31 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion32 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion32 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion32 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion33 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion33 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion33 , body: Faker::ChuckNorris.fact)



event51 = Event.create!(name: "Holiday Party", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Hi everyone,

We are having our Holiday Party on Thursday at Amity Hall in the West Village. Come and join us and a bunch of the other outdoorsy groups in NY to celebrate the passing year and the coming ski/snowboarding season.

We will do whiskey shots as an offering to the snow gods to make sure we have lots of snow this year! If you have already RSVP in the other groups you don't need to RSVP here but you can if you want. See everyone on Thursday at Amity Hall!!!

We have so far about 200 unique RSVPs between all the groups.", group_id: group11.id)
event52 = Event.create!(name: "REI SoHo's Indoor Climbing Kick-off Party", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Come to REI SoHo for the first annual Indoor Climbing Kick-off Party! It is that time of year again to get your technique dialed indoors to crush it for next spring outdoors. Whether you are exploring or experienced, all levels of climbers are invited to join us on November 17th. We're gathering the experts--Brooklyn Boulders and Black Diamond--to share their knowledge on where to climb and what gear to use to help you flash that next problem. Join us for the evening to meet fellow climbers in your hood.

", group_id: group11.id)
event53 = Event.create!(name: "Climbing in Patagonia with Colin Haley", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Join Patagonia Climbing Ambassador Colin Haley for an evening presentation about his last season in Patagonia. He’ll talk about the record-shattering climb he completed, with Alex Honnold, of the Torre Traverse: a 20-hour, 40-minute traverse of Cerro Standhardt, Punta Herron, Torre Egger and Cerro Torre. Get inspired, drink a cold one and score a chance to win some swag, including a Patagonia Nano-Air® Jacket! ", group_id: group11.id)
event54 = Event.create!(name: "Teton Gravity Research presents: Tight & Loose (an HD Ski and Snowboard Film)", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "New York City, get ready! On Thursday, November 10th, TGR is returning to the awesome Playstation Theatre in Times Square for the winter kick-off party of the year. Join us to celebrate TGR's 21st birthday with the one night only premiere of our new feature length ski and snowboard film, Tight Loose.

Come early, meet the athletes and help TGR celebrate 21 years of making movies! There will be more prize giveaways than ever before from our partners at Volkl, Atomic, The North Face, CEP and more.  Get your tickets early, as this event MAY sell out this year.", group_id: group11.id)
event55 = Event.create!(name: "Intro to Canoeing - Moving Water", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "The AMC NY/NoNJ Canoe Kayak Committee welcome you to Two days of canoe instruction and practice for first timers, for moving water. Or, take the course as a refresher, and we will challenge you. No prior paddling experience and no equipment needed. Learn basic strokes and maneuvers needed to negotiate the beautiful and easy but twisty rivers in our surrounding area or even paddle across a lake efficiently and without going in circles. This is a comprehensive course on eddy turns to ferrying, with plenty of hands-on practice. Fri. evening arrival highly recommended. Registration is not complete until full payment deposit is received. Dorm style cabin with kitchen, or bring own tent and sleep gear to sleep under the stars. ", group_id: group11.id)

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


discussion34 = Discussion.create!(group: group12 , title: Faker::ChuckNorris.fact)
discussion35 = Discussion.create!(group: group12 , title: Faker::ChuckNorris.fact)
discussion36 = Discussion.create!(group: group12 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion34 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion34 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion34 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion35 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion35 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion35 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion36, body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion36 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion36 , body: Faker::ChuckNorris.fact)


event56 = Event.create!(name: "[Write. Inspire. Repeat]", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Write, Inspire, and Repeat is holding a 1 hr 30 minute writing session.", group_id: group12.id)
event57 = Event.create!(name: "[Write. Inspire. Repeat]", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Write, Inspire, and Repeat is holding a 1 hr 30 minute writing session.", group_id: group12.id)
event58 = Event.create!(name: "[Write. Inspire. Repeat]", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Write, Inspire, and Repeat is holding a 1 hr 30 minute writing session.", group_id: group12.id)
event59 = Event.create!(name: "[Write. Inspire. Repeat]", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Write, Inspire, and Repeat is holding a 1 hr 30 minute writing session.", group_id: group12.id)
event60 = Event.create!(name: "[Write. Inspire. Repeat]", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Write, Inspire, and Repeat is holding a 1 hr 30 minute writing session.", group_id: group12.id)

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
Admin.create!(user: user1, group: group13)
Membership.create!(user: user4, group: group13)
Membership.create!(user: user7, group: group13)
Membership.create!(user: user10, group: group13)
Membership.create!(user: user13, group: group13)

discussion37 = Discussion.create!(group: group13 , title: Faker::ChuckNorris.fact)
discussion38 = Discussion.create!(group: group13 , title: Faker::ChuckNorris.fact)
discussion39 = Discussion.create!(group: group13 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion37 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion37 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion37 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion38 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion38 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion38 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion39 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion39 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion39 , body: Faker::ChuckNorris.fact)



event61 = Event.create!(name: "Field Trip to the Lowline!", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Come meet and hang out with ESW members! We'll visit the Lowline Lab, and probably go get coffee/lunch after. ", group_id: group13.id)
event62 = Event.create!(name: "Visionmaker Project Meeting", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Come learn about our verification of the Visionmaker water model, assess available data sources, and run visions to begin analysis.", group_id: group13.id)
event63 = Event.create!(name: "Garden the Gaps Project Meeting", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "First project meeting of Garden the Gaps. Meeting goals:

• Further define purpose and project components

• Brainstorm about our target audiences and how to reach out (potential gap gardeners)

• GARDEN types/purposes - Food, Ornamentals, Zero-scape, carbon sequestration, ecological remediation,...etc

• Define the Gap - definition can be broad and is more adaptable than just vacant lots

", group_id: group13.id)
event64 = Event.create!(name: "General Body Meeting", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "General Body Meetings are for all parts of ESW-NYC, from board members to project members. We will start with announcements, updates, and project ideation, before moving onto a 20-30 minute discussion of an ethics issue in sustainability. With the remaining time, we will break out into existing project groups (or start new ones!). The General Body Meeting wraps up with report backs from the project groups and a check-in with ESW-NYC's longterm goals. You can find minutes from our past meetings on our website.

", group_id: group13.id)
event65 = Event.create!(name: "Project Meeting", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "At our monthly general body meeting, we'll talk org updates and review project ideas before breaking out into project groups. This will be our first project meeting, doubly exciting because we will also choose our first projects!!

", group_id: group13.id)

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



group14 = Group.create!(name: "Follow Your Bliss", description: "Let's get together for affordable activities in our community! We offer a number of holistic treatments, spiritual growth classes, meditations, educational workshops and wellness events every month. Let's stay healthy together.", category:"health & fitness")


event66 = Event.create!(name: "Sound Healing Group Session with the Didgeridoo", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "SOUND HEALING and Eden Energy with the Didgeridoo Presented by FuLang and Gazel
Enter the healing space through vibrational therapy for stress reduction and mind-body relaxation. Balance, ground, and receive the resonant sounds of Earth through the didgeridoo. BIO: Gazel is a licensed massage therapist. He has been playing Didgeridoo for 3 years and continues to connect to the instrument in new ways. Diving into traditional/meditative grooves to more modern rhythms, he also accompanies the didgeridoo with the native American flute and other instruments including the kalimbas, drums, and voice.", group_id: group14.id)
event67 = Event.create!(name: "Channeled Light Language Activation and Healing Quantum Vortex Meditation", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Light Language is channeled sound and light that can heal physically, emotionally and spiritually. It is an energy activation through sound vibrations and coding spoken in very rapid frequencies which will activate soul memory. The soul recognizes the sound and messages", group_id: group14.id)
event68 = Event.create!(name: "Healing your Heart For World Peace Meditation", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Join us for Our Monthly Meditation Class for World Peace every third Sunday of every month!

Here you will learn how to quiet your mind, relax your body and open your heart using various breathing techniques, chanting and a gentle guided meditation.

This Monthly Meditation Class will not only assist you with reducing stress in your life but also will help you with developing a deeper relationship with the Divine Presence within your own heart.", group_id: group14.id)
event69 = Event.create!(name: "Midnight Meditation for World Peace", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "We warmly invite you to join us for an evening of Prayer and Meditation as we pray for World Peace at this illustrious and auspicious event. Come quiet your mind, relax your body, open your heart and immerse yourself in the Radiance, Brilliance, Peace and Joy of this Holy Season.", group_id: group14.id)
event70 = Event.create!(name: "REE West African Dance Class!!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Join Nafisa Sharriff and the West African Dance Family for Free Classes every Monday and Wednesday evening", group_id: group14.id)

Membership.create!(user: user2, group: group14)
Membership.create!(user: user5, group: group14)
Membership.create!(user: user8, group: group14)
Membership.create!(user: user11, group: group14)
Membership.create!(user: user14, group: group14)

discussion40 = Discussion.create!(group: group14 , title: Faker::ChuckNorris.fact)
discussion41 = Discussion.create!(group: group14 , title: Faker::ChuckNorris.fact)
discussion42 = Discussion.create!(group: group14 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion40 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion40 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion40 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion41 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion41 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion41 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion42 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion42 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion42 , body: Faker::ChuckNorris.fact)


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

discussion43 = Discussion.create!(group: group15 , title: Faker::ChuckNorris.fact)
discussion44 = Discussion.create!(group: group15 , title: Faker::ChuckNorris.fact)
discussion45 = Discussion.create!(group: group15 , title: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion43 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion43 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion43 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion44 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion44 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion44 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion45 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion45 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion45 , body: Faker::ChuckNorris.fact)


event71 = Event.create!(name: "BEACON HS, midtown FUTSAL", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "One game is 55-60 minutes. Be early. Every player rotates at the goal for 6 minutes, timed with an electronic scoreboard. NO breaks. Regulation size goals with nets. professional  futsal ball. Please make sure to bring a white and a red t-shirt, indoor shoes, games are competitive, but friendly. Sorry, no beginners.

Zero tolerance to fouls . “Futsal is a technical game, not physical”. Minimum physical contact means fewer injuries and no violence. No charging, no displacing with your arms or body to gain position on the ball. No running into the opponent. Play the ball, not the player. ", group_id: group15.id)
event72 = Event.create!(name: "UWS Gym", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Only 10 players per game, no subs. One game is 55-60 minutes. Be early. Every player rotates as a Goalie for 6 minutes; timed it with an electronic scoreboard. We play without a break. Regulation size goals with nets. Futsal ball. Please make sure to bring a white and a red t-shirt, indoor shoes. Games are competitive, but friendly. Please keep in mind that these games are definitely not for the beginners.

No fouls, zero tolerance to this. “Futsal is not a physical but a technical game”. Minimum physical contact means fewer injuries and no violence. No charging, no displacing with your arms or body to gain the position on the ball. No running into the opponent. Play the ball, not the player. Time it, don’t foul it. ", group_id: group15.id)
event73 = Event.create!(name: "UWS
", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Only 10 players per game, no subs. One game is 55-60 minutes. Be early. Every player rotates as a Goalie for 6 minutes, time it with an electronic scoreboard. We play without a break. Regulation size goals with nets. Futsal ball. Please make sure to bring a white and a red t-shirt, indoor shoes. Games are competitive, but friendly. Please keep in mind that these games are definitely not for the beginners.

No fouls, zero tolerance to this. “Futsal is not a physical but a technical game”. Minimum physical contact means fewer injuries and no violence. No charging, no displacing with your arms or body to gain the position on the ball. No running into the opponent. Play the ball, not the player. Time it, don’t foul it. ", group_id: group15.id)
event74 = Event.create!(name: "BEACON HS", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Only 10 players per game, no subs. One game is 55-60 minutes. Be early. Every player rotates as a Goalie for 6 minutes, time it with an electronic scoreboard. We play without a break. Regulation size goals with nets. Futsal ball. Please make sure to bring a white and a red t-shirt, indoor shoes. Games are competitive, but friendly. Please keep in mind that these games are definitely not for the beginners.

No fouls, zero tolerance to this. “Futsal is not a physical but a technical game”. Minimum physical contact means fewer injuries and no violence. No charging, no displacing with your arms or body to gain the position on the ball. No running into the opponent. Play the ball, not the player. Time it, don’t foul it. ", group_id: group15.id)
event75 = Event.create!(name: "UWS
", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Only 10 players per game, no subs. One game is 55-60 minutes. Be early. Every player rotates as a Goalie for 6 minutes, time it with an electronic scoreboard. We play without a break. Regulation size goals with nets. Futsal ball. Please make sure to bring a white and a red t-shirt, indoor shoes. Games are competitive, but friendly. Please keep in mind that these games are definitely not for the beginners.

No fouls, zero tolerance to this. “Futsal is not a physical but a technical game”. Minimum physical contact means fewer injuries and no violence. No charging, no displacing with your arms or body to gain the position on the ball. No running into the opponent. Play the ball, not the player. Time it, don’t foul it. ", group_id: group15.id)

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


group16 = Group.create!(name: "Grand FC: Pickup Soccer NYC", description: "Grand FC organizes Soccer year round in NYC. It's our aim to provide structured and affordable game time in a fun and sporting environment. We take organizing seriously and believe soccer has the reach to engage socially, whilst playing a positive role in the community.

Pickup games occur in a fun and relaxed environment, a place to meet new players and improve your game. Our group also offers Co-Ed and Men's leagues under Group Stage Soccer. These matches are more competitive, yet played in a positive sporting environment. ", category: "sports")


Membership.create!(user: user1 , group: group16 )
Membership.create!(user: user5 , group: group16 )
Membership.create!(user: user7 , group: group16 )
Membership.create!(user: user9 , group: group16 )
Membership.create!(user: user11 , group: group16 )

discussion46 = Discussion.create!(group: group16 , title: Faker::ChuckNorris.fact)
discussion47 = Discussion.create!(group: group16 , title: Faker::ChuckNorris.fact)
discussion48 = Discussion.create!(group: group16 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user1 , discussion: discussion46 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion46 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion46 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion47 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion47 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion47 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion48 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion48 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion48 , body: Faker::ChuckNorris.fact)

event76 = Event.create!(name: "Soccer 7v7", description: "1) Teams divide into equal ability.

2) Footwear: Turf shoes or molded cleats are best. Proper Soccer attire only.

3) Played in a fun & chill environment. Rough play, tackles, or sliding are not tolerated. Emphasis on passing over dribbling.

4) If there are no dedicated goalkeepers, players rotate in goal.

5) If you arrive late pls wait until a break in the game. Inserting players in the middle of the game disrupts the flow- it's not fair to those that arrive on time.

All players must RSVP w/ payment. This goes toward light rentals, field permits, equipment and fees.", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group16.id )
event77 = Event.create!(name: "Indoor 5v5 Soccer ", description: "Signup your team, or join as an individual player and we'll assign you to a cracking new team - all players receive team jerseys and trophies for finalists. Post game drinks at a local bar keep things social! ", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group16.id )
event78 = Event.create!(name: "Soccer 7v7", description: "1) Teams divide into equal ability.

2) Footwear: Turf shoes or molded cleats are best. Proper Soccer attire only.

3) Played in a fun & chill environment. Rough play, tackles, or sliding are not tolerated. Emphasis on passing over dribbling.

4) If there are no dedicated goalkeepers, players rotate in goal.

5) If you arrive late pls wait until a break in the game. Inserting players in the middle of the game disrupts the flow- it's not fair to those that arrive on time.

All players must RSVP w/ payment. This goes toward light rentals, field permits, equipment and fees.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group16.id )
event79 = Event.create!(name: "Indoor 5v5 Soccer ", description: "Signup your team, or join as an individual player and we'll assign you to a cracking new team - all players receive team jerseys and trophies for finalists. Post game drinks at a local bar keep things social! ", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group16.id )
event80 = Event.create!(name: "Soccer 7v7", description: "1) Teams divide into equal ability.

2) Footwear: Turf shoes or molded cleats are best. Proper Soccer attire only.

3) Played in a fun & chill environment. Rough play, tackles, or sliding are not tolerated. Emphasis on passing over dribbling.

4) If there are no dedicated goalkeepers, players rotate in goal.

5) If you arrive late pls wait until a break in the game. Inserting players in the middle of the game disrupts the flow- it's not fair to those that arrive on time.

All players must RSVP w/ payment. This goes toward light rentals, field permits, equipment and fees.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group16.id )

Rsvp.create!(user: user1 , event: event76 )
Rsvp.create!(user: user5 , event: event76 )
Rsvp.create!(user: user7 , event: event76 )
Rsvp.create!(user: user9 , event: event77 )
Rsvp.create!(user: user11 , event: event77 )
Rsvp.create!(user: user5 , event: event77 )
Rsvp.create!(user: user1 , event: event78 )
Rsvp.create!(user: user7 , event: event78 )
Rsvp.create!(user: user9 , event: event78 )
Rsvp.create!(user: user11 , event: event79 )
Rsvp.create!(user: user5 , event: event79 )
Rsvp.create!(user: user1 , event: event79 )
Rsvp.create!(user: user7 , event: event80 )
Rsvp.create!(user: user11 , event: event80 )
Rsvp.create!(user: user9 , event: event80 )

group17 = Group.create!(name: "SONGSALIVE! EAST COAST", description: "Songsalive! is the largest international non-profit membership organization and social community for songwriters and composers, since 1997. In New York City, NY we have a songwriters showcase/open mic EVERY TUESDAY. We also have a chapter in Long Island, NY as well. Network, learn all about the music industry, share your songs and get VALUABLE feedback from other Songwriters in the area.", category: "music")


Membership.create!(user: user13 , group: group17 )
Membership.create!(user: user15 , group: group17 )
Membership.create!(user: user2 , group: group17 )
Membership.create!(user: user4 , group: group17 )
Membership.create!(user: user6 , group: group17 )

discussion49 = Discussion.create!(group: group17 , title: Faker::ChuckNorris.fact)
discussion50 = Discussion.create!(group: group17 , title: Faker::ChuckNorris.fact)
discussion51 = Discussion.create!(group: group17 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user2 , discussion: discussion49 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion49 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion49 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion50 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion50 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion50 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion51 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion51 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion51 , body: Faker::ChuckNorris.fact)



event81 = Event.create!(name: "Songsalive! New York City Showcase & Open Mic", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Featuring talented songwriters from around the globe, the Songsalive! Showcases are the best industry secret, a great happening all around the world. Songsalive! Showcases are a very cozy, intimate and acoustic environment where media and music industry representatives often drop by to check out the latest talent. Showcase your music and support our national and international live events and showcases presenting songwriters and artists of original music. Showcases are quality entertainment songwriter performances around the country. All members are eligible to perform at a Songsalive!", group_id: group17.id)
event82 = Event.create!(name: "Free Webinar: How to Plan For and Have A Successful Songwriting Business", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "How to Plan for and Have a Successful Songwriter Business

For songwriters and composers of original music. You will learn:

1. Why a Plan is important.
2. How to write a Solid Plan to bring success to you and your music.
3. Key factors that make a successful, thriving, financially abundant and joyful songwriter business.

Plus attendees will receive a special bonus at the end.", group_id: group17.id)
event83 = Event.create!(name: "SingSong Showcase", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Have a blast, come sing with your friends and family at a free open-mic night", group_id: group17.id)
event84 = Event.create!(name: "Slam Poetry In Song", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Poems converted to songs, written by slam poets, performed by our members", group_id: group17.id)
event85 = Event.create!(name: "Write, Sing, Repeat", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, description: "Come join our professional song writers as we write together as a group, and sing together as a group", group_id: group17.id)


Rsvp.create!(user: user2 , event: event81 )
Rsvp.create!(user: user4 , event: event81 )
Rsvp.create!(user: user6 , event: event81 )
Rsvp.create!(user: user13 , event: event82 )
Rsvp.create!(user: user15 , event: event82 )
Rsvp.create!(user: user4 , event: event82 )
Rsvp.create!(user: user6 , event: event83 )
Rsvp.create!(user: user13 , event: event83 )
Rsvp.create!(user: user15 , event: event83 )
Rsvp.create!(user: user2 , event: event84 )
Rsvp.create!(user: user4 , event: event84 )
Rsvp.create!(user: user6 , event: event84 )
Rsvp.create!(user: user13 , event: event85 )
Rsvp.create!(user: user15 , event: event85 )
Rsvp.create!(user: user6 , event: event85 )


group18 = Group.create!(name: "TGFK 2 - Too Good for Karaoke", description: "This group is the reloaded version of the original TGFK (Too Good for Karaoke) group -- same organizers, same principles and same kind of fun. We are a karaoke group that goes beyond karaoke. Whether you are an amateur singer or an aspiring musician, this group is for you. We hold meetups in open karaoke bars or private rooms; we attend open-mics and singer showcases; we throw theme parties with lots of singing; we network with the music industry. Get together with stellar singers and friends, and SHINE unabashedly because you're surrounded by fellow performers (and admirers) that secretly share the same dream as you!", category: "music")


Membership.create!(user: user8 , group: group18 )
Membership.create!(user: user10 , group: group18 )
Membership.create!(user: user12 , group: group18 )
Membership.create!(user: user14 , group: group18 )
Membership.create!(user: user1 , group: group18 )

discussion52 = Discussion.create!(group: group18 , title: Faker::ChuckNorris.fact)
discussion53 = Discussion.create!(group: group18 , title: Faker::ChuckNorris.fact)
discussion54 = Discussion.create!(group: group18 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user8 , discussion: discussion52 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion52 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion52 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion53 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion53 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion53 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion54 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion54 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion54 , body: Faker::ChuckNorris.fact)

event86 = Event.create!(name: "Open Mic at Metropolitan Room", description: "Hi Stellar Singers,

In case you missed the open mic events at the original TGFK group, here is your chance to shine. Metropolitan Room (http://metropolitanroom.com/) is an established Jazz cabaret venue which has hosted many professional singers in the industry. Every second and fourth Sunday, they have an open mic for all the aspiring performers. Do not feel intimidated. Many of our group members have sung at this venue and it was totally fun.", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group18.id )
event87 = Event.create!(name: "After-brunch karaoke", description: "Stellar Singers!

Arranged for us to get together Sunday afternoon, August 14th, for a private room event at Radio Star Karaoke.

Come join us for a fun and leisurely afternoon, and enjoy a free shot to kick off the festivities. We'll have some appetizers to nibble on as well.

Only RSVP if you are certain you are coming, as they are charging us for the room. We had a number of RSVPs that were no-shows, which hurt us as we had our credit cards on the line and were the ones that were inevitably charged. Please be considerate. Last minute emergencies arise, but if we find that you are consistently RSVPing and canceling/not showing up, we will eject you from the group. Apologies for sounding heavy-handed, but we feel that it is necessary to make this a point. See ya there!", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group18.id )
event88 = Event.create!(name: "Karaoke Happy Hour", description: "Stellar Singers -

It's settled! We're meeting at Radio Star Karaoke. This event will be held in the open lounge area of the bar, not in a private room. Feel free to bring Plus 1s or 2s because the more the merrier, literally.

", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group18.id )
event89 = Event.create!(name: "TGFK Karaoke Reloaded", description: "Hi Stellar Singers,

We are going to kick start the summer season in our conventional format -- group karaoke in a private room. Duet 35 has nice acoustic setup and affordable marathon price ($14 per person for the entire afternoon till 8pm). They have their song books online, if you want to search for certain songs:  http://www.karaokeduet.com/songs.html

You can bring your own food and snacks, and they also have extensive menus from neighborhood restaurants. Beverages need to be purchased from the karaoke bar. Everyone pays for their own drinks and room fee individually. Cash and credit cards are accepted.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group18.id )
event90 = Event.create!(name: "Open Mic at Metropolitan Room", description: "Hi Stellar Singers,

In case you missed the open mic events at the original TGFK group, here is your chance to shine. Metropolitan Room (http://metropolitanroom.com/) is an established Jazz cabaret venue which has hosted many professional singers in the industry. Every second and fourth Sunday, they have an open mic for all the aspiring performers. Do not feel intimidated. Many of our group members have sung at this venue and it was totally fun.

You will pay $15 cash at the door (which covers your time slot for one song) and $10 minimum on drinks/food after you are seated (menu: http://metropolitanroom.com/Our-Menu).

You will need to bring your sheet music for the resident pianist. There is no backing track, only piano. Therefore, songs that sound great on the piano (such as jazz, pop, broadway, cabaret, gospel, etc) are all good choices. If you are not familiar with sheet music, or if you can't find yours online, please reach out to me in advance and I will try my best to help.

Metropolitan Room has the most professional audio setup for an open mic. The hosts, Susan and Debbie, are long-time singers and vocal instructors themselves. The attendees of this open mic are 50% amateur singers and 50% professionals, but all of them are very supportive audience. There are also great networking opportunities after the show.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group18.id )

Rsvp.create!(user: user8 , event: event86 )
Rsvp.create!(user: user10 , event: event86 )
Rsvp.create!(user: user12 , event: event86 )
Rsvp.create!(user: user14 , event: event87 )
Rsvp.create!(user: user1 , event: event87 )
Rsvp.create!(user: user8 , event: event87 )
Rsvp.create!(user: user10 , event: event88 )
Rsvp.create!(user: user12 , event: event88 )
Rsvp.create!(user: user14 , event: event88 )
Rsvp.create!(user: user12 , event: event89 )
Rsvp.create!(user: user14 , event: event89 )
Rsvp.create!(user: user1 , event: event89 )
Rsvp.create!(user: user8 , event: event90 )
Rsvp.create!(user: user10 , event: event90 )
Rsvp.create!(user: user14 , event: event90 )



group19 = Group.create!(name: "Young Foodies", description: "This group is geared towards younger (20s and 30s) people who are looking to try new cuisines, restaurants, and share in interesting conversations and make some new friends.

Meals will range anywhere from $20 to $300.

My goal with the group is to combine the best elements of many different food groups I have been to. Here is what sets this group apart:

1). We will typically have 1-3 meals per week. Some weeks will have more and some will have less. So far we have averaged around 2 per week.

2). I am aiming to organize smaller dinners so everyone can get to know each other and we avoid being a large and awkward group. Dinners will almost always be around 4-5 people. This makes it very important that you show up if you RSVP. So far I have been asking new members for a written confirmation of attendance and we have had 100% attendance. I hope this will continue.

3). Fees: I hate it when meetups charge a few dollars from each member. It makes me feel like the organizer is making money instead of bringing people together to enjoy an activity. I will cover all the meetup fees for now. If anyone wants to contribute feel free to but for now I am not going to ask.

4). A lot of groups seem to do the same activities or go to the same places over and over again. I will find new and exciting places to try that have good write ups and reviews. That being said, I am always open to member suggestions, so please send me suggestions of places you want to go.

Thanks and I hope you join the group and we can have a lot of fun exploring the amazing NYC food scene. Please feel free to reach out with any questions.", category: "food & drinks")


Membership.create!(user: user3 , group: group19 )
Membership.create!(user: user5 , group: group19 )
Membership.create!(user: user7 , group: group19 )
Membership.create!(user: user9 , group: group19 )
Membership.create!(user: user11 , group: group19 )

discussion55 = Discussion.create!(group: group19 , title: Faker::ChuckNorris.fact)
discussion56 = Discussion.create!(group: group19 , title: Faker::ChuckNorris.fact)
discussion57 = Discussion.create!(group: group19 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user3 , discussion: discussion55 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion55 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion55 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion56 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion56 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion56 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion57 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion57 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion57 , body: Faker::ChuckNorris.fact)

event91 = Event.create!(name: "Mezze Bar - Mediterranean Food", description: "Please don't RSVP unless you are sure you can go. I notice the people who RSVP and then cancel, which is not fair to everyone else. I reserve the right to give priority to people who don't do this in the future. I'm not trying to be mean but it makes it much harder for me when people take spots and then cancel either quickly or last minute. Obviously more notice is better, but please try to only sign up (for waitlist as well) if you know you can come. Note that if you habitually cancel you will be removed from the group.

Even if the meetup is full, please put your name on the waitlist. I will let you know if a spot becomes available. Also, if there are a lot of people on the waitlist, it lets me know which kind of restaurants are popular so that I may schedule more of those in the future.

Please note that meetup events are strictly for members. No +1s are allowed as reservations are made in advance and spots are assigned. First time members must confirm in writing that they will attend. Individuals that are no shows are immediately banned from the group. Additionally, those who do not respond to messages will be removed from the group.

Lastly, please be aware that there is the potential for an event to be outright canceled or rescheduled last minute when low enrollment falls to 1-2 due to last minute cancellations or non-enrollment. It is the responsibility of the diner to check their messages, (I message individuals in this instance), and the event page to make sure the event is running. Thanks.", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group19.id )
event92 = Event.create!(name: "Streets BK - International Food", description: "Please don't RSVP unless you are sure you can go. I notice the people who RSVP and then cancel, which is not fair to everyone else. I reserve the right to give priority to people who don't do this in the future. I'm not trying to be mean but it makes it much harder for me when people take spots and then cancel either quickly or last minute. Obviously more notice is better, but please try to only sign up (for waitlist as well) if you know you can come. Note that if you habitually cancel you will be removed from the group.

Even if the meetup is full, please put your name on the waitlist. I will let you know if a spot becomes available. Also, if there are a lot of people on the waitlist, it lets me know which kind of restaurants are popular so that I may schedule more of those in the future.

Please note that meetup events are strictly for members. No +1s are allowed as reservations are made in advance and spots are assigned. First time members must confirm in writing that they will attend. Individuals that are no shows are immediately banned from the group. Additionally, those who do not respond to messages will be removed from the group.

Lastly, please be aware that there is the potential for an event to be outright canceled or rescheduled last minute when low enrollment falls to 1-2 due to last minute cancellations or non-enrollment. It is the responsibility of the diner to check their messages, (I message individuals in this instance), and the event page to make sure the event is running. Thanks.", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group19.id )
event93 = Event.create!(name: "Marc Forgione - American(New)", description: "Please don't RSVP unless you are sure you can go. I notice the people who RSVP and then cancel, which is not fair to everyone else. I reserve the right to give priority to people who don't do this in the future. I'm not trying to be mean but it makes it much harder for me when people take spots and then cancel either quickly or last minute. Obviously more notice is better, but please try to only sign up (for waitlist as well) if you know you can come. Note that if you habitually cancel you will be removed from the group.

Even if the meetup is full, please put your name on the waitlist. I will let you know if a spot becomes available. Also, if there are a lot of people on the waitlist, it lets me know which kind of restaurants are popular so that I may schedule more of those in the future.

Please note that meetup events are strictly for members. No +1s are allowed as reservations are made in advance and spots are assigned. First time members must confirm in writing that they will attend. Individuals that are no shows are immediately banned from the group. Additionally, those who do not respond to messages will be removed from the group.

Lastly, please be aware that there is the potential for an event to be outright canceled or rescheduled last minute when low enrollment falls to 1-2 due to last minute cancellations or non-enrollment. It is the responsibility of the diner to check their messages, (I message individuals in this instance), and the event page to make sure the event is running. Thanks.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group19.id )
event94 = Event.create!(name: "Le Bernardin - Three Michelin Stars", description: "Please don't RSVP unless you are sure you can go. I notice the people who RSVP and then cancel, which is not fair to everyone else. I reserve the right to give priority to people who don't do this in the future. I'm not trying to be mean but it makes it much harder for me when people take spots and then cancel either quickly or last minute. Obviously more notice is better, but please try to only sign up (for waitlist as well) if you know you can come. Note that if you habitually cancel you will be removed from the group.

Even if the meetup is full, please put your name on the waitlist. I will let you know if a spot becomes available. Also, if there are a lot of people on the waitlist, it lets me know which kind of restaurants are popular so that I may schedule more of those in the future.

Please note that meetup events are strictly for members. No +1s are allowed as reservations are made in advance and spots are assigned. First time members must confirm in writing that they will attend. Individuals that are no shows are immediately banned from the group. Additionally, those who do not respond to messages will be removed from the group.

Lastly, please be aware that there is the potential for an event to be outright canceled or rescheduled last minute when low enrollment falls to 1-2 due to last minute cancellations or non-enrollment. It is the responsibility of the diner to check their messages, (I message individuals in this instance), and the event page to make sure the event is running. Thanks.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group19.id )
event95 = Event.create!(name: "Nickel & Diner - American (Traditional)", description: "Please don't RSVP unless you are sure you can go. I notice the people who RSVP and then cancel, which is not fair to everyone else. I reserve the right to give priority to people who don't do this in the future. I'm not trying to be mean but it makes it much harder for me when people take spots and then cancel either quickly or last minute. Obviously more notice is better, but please try to only sign up (for waitlist as well) if you know you can come. Note that if you habitually cancel you will be removed from the group.

Even if the meetup is full, please put your name on the waitlist. I will let you know if a spot becomes available. Also, if there are a lot of people on the waitlist, it lets me know which kind of restaurants are popular so that I may schedule more of those in the future.

Please note that meetup events are strictly for members. No +1s are allowed as reservations are made in advance and spots are assigned. First time members must confirm in writing that they will attend. Individuals that are no shows are immediately banned from the group. Additionally, those who do not respond to messages will be removed from the group.

Lastly, please be aware that there is the potential for an event to be outright canceled or rescheduled last minute when low enrollment falls to 1-2 due to last minute cancellations or non-enrollment. It is the responsibility of the diner to check their messages, (I message individuals in this instance), and the event page to make sure the event is running. Thanks.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group19.id )

Rsvp.create!(user: user3 , event: event91 )
Rsvp.create!(user: user5 , event: event91 )
Rsvp.create!(user: user7 , event: event91 )
Rsvp.create!(user: user9 , event: event92 )
Rsvp.create!(user: user11 , event: event92 )
Rsvp.create!(user: user3 , event: event92 )
Rsvp.create!(user: user5 , event: event93 )
Rsvp.create!(user: user7 , event: event93 )
Rsvp.create!(user: user9 , event: event93 )
Rsvp.create!(user: user11 , event: event94 )
Rsvp.create!(user: user3 , event: event94 )
Rsvp.create!(user: user5 , event: event94 )
Rsvp.create!(user: user7 , event: event95 )
Rsvp.create!(user: user9 , event: event95 )
Rsvp.create!(user: user11 , event: event95 )


group20 = Group.create!(name: "Craft Beers & Brews", description: "We are Craft Brew Aficionados
We believe in all things Craft
We love to learn about Bigger, Better, Bolder Brews
We are here to Socialize with our fellow Crafty Pubsters
We Explore the Best Craft Bars & Brewhouses in the region
We adhere to the motto: Drink Craft, not crap!
And most of all..

We look forward to seeing YOU join us soon!", category: "food & drinks")



Membership.create!(user: user13 , group: group20 )
Membership.create!(user: user15 , group: group20 )
Membership.create!(user: user2 , group: group20 )
Membership.create!(user: user4 , group: group20 )
Membership.create!(user: user6 , group: group20 )

discussion58 = Discussion.create!(group: group20 , title: Faker::ChuckNorris.fact)
discussion59 = Discussion.create!(group: group20 , title: Faker::ChuckNorris.fact)
discussion60 = Discussion.create!(group: group20 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user13 , discussion: discussion58 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion58 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion58 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion59 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion59 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion59 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion60 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion60 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion60 , body: Faker::ChuckNorris.fact)

event96 = Event.create!(name: "Imperial Stout Festival @ The Owl Farm", description: "This is a year end tradition here at CB2.  And, this will be our 4th year in a row!

If you love stouts then you can't miss this one!  Besides plenty of dark & delicious beers on tap they will have some bottle pours too.  List tba.

FYI Owl Farm doesn't serve food but we will be steps away from a variety of places.  And, you can bring the food back to eat in the bar.  Also, they allow dogs.

Come and join us because it's going to be really tasty! ", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group20.id )
event97 = Event.create!(name: "Beer & Eats @ Treadwell Park", description: "The beer and menu are solid. There's also free popcorn and pinball machines + ping pong tables in the back.

Come and join us!

NOTE: We will be on the main level.
If you go downstairs it's a cigar lounge and there's a different tab for that.", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group20.id )
event98 = Event.create!(name: "Drinks after work @ Albion", description: "Solid tap list come by and have a drink.
They don't serve food but you're welcome to bring in your own edibles.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group20.id )
event99 = Event.create!(name: "Let's Pour Ourselves Some Drinks @ Paloma Rocket", description: "Yes, you read that correctly. You buy a card in the amount of your choice and go to any tap and pull the lever. It's a self serve bar. They charge by the ounce and you can have as much or as little of any beer!

Here's an article about this new bar.
http://www.timeout.com/newyork/bars/paloma-rocket

Oh and Paloma Rocket for the time being is CASH ONLY.
They don't serve food but you can bring in your own edibles.

After if you're up for it we can walk over to One Mile House, a great craft beer bar. And, they have the best poutine in the city!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group20.id )
event100 = Event.create!(name: "Drinks After Work @ Corlear's", description: "If you want a place to relax after work with some good craft beers then this is the place to be!

There's no food.... yet but you can bring edibles from outside.

This place is new and their website is still under construction but I went and had a few drinks there. Their staff is friendly and the vibe is very chill.

If you're free come and join us!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group20.id )

Rsvp.create!(user: user13 , event: event96 )
Rsvp.create!(user: user15 , event: event96 )
Rsvp.create!(user: user2 , event: event96 )
Rsvp.create!(user: user4 , event: event97 )
Rsvp.create!(user: user6 , event: event97 )
Rsvp.create!(user: user13 , event: event97 )
Rsvp.create!(user: user15 , event: event98 )
Rsvp.create!(user: user2 , event: event98 )
Rsvp.create!(user: user4 , event: event98 )
Rsvp.create!(user: user6 , event: event99 )
Rsvp.create!(user: user13 , event: event99 )
Rsvp.create!(user: user15 , event: event99 )
Rsvp.create!(user: user2 , event: event100 )
Rsvp.create!(user: user4 , event: event100 )
Rsvp.create!(user: user6 , event: event100 )



group21 = Group.create!(name: "Passport to Ethnic Eats", description: "Calling All Adventurous Foodies,

Let’s travel the world using our taste buds!

One of the most wonderful things about New York City is its melting pot of ethnicities and its incredible ethnic diversity identity. You can literally travel around the world in NY without even getting on a plane. Exploring different ethnic neighborhoods and sampling their delicious ethnic dishes is a must, whether you live in NYC or are just visiting. Eating in an ethnic restaurant is about more than just the food, it’s a cultural experience that gives you a literal taste of life in another land.

OUR OBJECTIVES: This group is specifically meant for those who enjoy exploring the great diversity of ethnic cuisines from all around the world in a fun, relaxed atmosphere in the company of other like-minded adventurous foodies right here in the NYC and surrounding vicinities. Together we will eat our way through a cornucopia of exotic cuisines representing all corners of the globe.

OUR MEETUPS: Good food is meant to be shared. At each Meetup, we will dine FAMILY-STYLE, NO EXCEPTIONS! Attendees will have a say in the selection of a variety of dishes. Final food bill, together with tax and tips will be shared among the attendees. Any drinks are separate and are the responsibility of the drinkers. Number of attendees to our events will be kept at a small number (no more than 12) to allow everyone to get to know each other.

MEETUP FEE: To help defray the cost of paying Meetup HQ to keep the site up and running, a $1.00 Meetup fee will be collected at randomly selected events.

IMPORTANT GROUP RULES: A successful group is not about how many members there are in the group. It is about the quality of members in the group! We would rather have a small group of quality members than a huge group of joiners and “lurkers” who never show up to any event.", category: "food & drinks")



Membership.create!(user: user8 , group: group21 )
Membership.create!(user: user10 , group: group21 )
Membership.create!(user: user12 , group: group21 )
Membership.create!(user: user14 , group: group21 )
Membership.create!(user: user1 , group: group21 )

discussion61 = Discussion.create!(group: group21 , title: Faker::ChuckNorris.fact)
discussion62 = Discussion.create!(group: group21 , title: Faker::ChuckNorris.fact)
discussion63 = Discussion.create!(group: group21 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user8 , discussion: discussion61 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion61 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion61 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion62 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion62 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion62 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion63 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion63 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion63 , body: Faker::ChuckNorris.fact)

event101 = Event.create!(name: "Late Lunch at The Granola Bar in Greenwich", description: "Take a break from all the holiday stress and join the foodies for a midweek brunch or lunch at the Granola Bar.  This is for the newest restaurant on Greenwich Ave in Greenwich.  Deemed very healthy fair, the menu is fun and a bit eclectic.  Besides breakfast and of course granola, they have salads, sandwiches, wraps, soups, homemade smoothies etc.  I noted quite a bit of vegetarian fare and many gluten free options.  Family friendly!", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group21.id )
event102 = Event.create!(name: "Ralph & Rich's Round 2: Is it sauce or gravy?", description: "Annie strikes again to host Round 2 at RnR!!  Affordable and local old school Italian food since 1990 in Bridgeport!  That's the iconic Ralph 'n Rich's!  The beautiful white draperies allow for a feeling of warmth and elegance.  But the food steals the show!  They are located across the street from the Barnum Museum at 815 Main St and have free parking.  Note the wide variety of pastas, meats and fish with prices to please.  Gluten free pasta available and plenty of vegetarian options noted on both the appetizer and entrée sections of the menu.", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group21.id )
event103 = Event.create!(name: "Bread Making Class at Wave Hill Bread Bakery!", description: "Join the foodies in learning to make a delicious three grain bread. There will be a fee charged for this meet up..

This is favorite food vendor!

Details will follow as soon as everything is firmed up but this will be in the afternoon and we are waiting for the price (I think it's $15 per person but not certain).  We will likely head out for dinner following our bread baking lessons.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group21.id )
event104 = Event.create!(name: "Edo Japanese and Korean Restaurant", description: "We recently were introduced to this fun locally owned Japanese and Korean restaurant.

FYI, this is a BYOB place right now but they may have liquor license by the time we are there.

Please bring cash if possible to make check out a little easier. ", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group21.id )
event105 = Event.create!(name: "Kashi Sushi Lounge", description: "Sushi. Sake. Lounge.  This place is ultra hip and is actually more lounge environment than restaurant (translation = noisy!).  However, this comes highly recommended.  Let's see if Kashi gives Westport's Pink Sumo competition in the sushi category!

For the young and young at heart, group decision on where to continue the party after dinner!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group21.id )

Rsvp.create!(user: user8 , event: event101 )
Rsvp.create!(user: user10 , event: event101 )
Rsvp.create!(user: user12 , event: event101 )
Rsvp.create!(user: user14 , event: event102 )
Rsvp.create!(user: user1 , event: event102 )
Rsvp.create!(user: user8 , event: event102 )
Rsvp.create!(user: user10 , event: event103 )
Rsvp.create!(user: user12 , event: event103 )
Rsvp.create!(user: user14 , event: event103 )
Rsvp.create!(user: user1 , event: event104 )
Rsvp.create!(user: user8 , event: event104 )
Rsvp.create!(user: user10 , event: event104 )
Rsvp.create!(user: user12 , event: event105 )
Rsvp.create!(user: user14 , event: event105 )
Rsvp.create!(user: user1 , event: event105 )


group22 = Group.create!(name: "NEW YORK ADVENTURE CLUB", description: "UNLOCK YOUR CITY

We give you insider access to the city’s best-kept secrets. But we’re so much more than a tour company.



WHO WE ARE

We are a community-driven club that curates the most unique experiences in town, with a focus on history and storytelling. We show you a city you never knew existed, and offer a community you can’t live without.

You won’t find our special-access tours and exclusive events anywhere else. Think after-hours tours of New York City’s most celebrated spaces, themed parties in unexpected locations, and weekend excursions to incredible destinations. All of our events end with social hangouts so you can meet people who love exploring as much as you do.



THE ‘CLUB’ IN NEW YORK ADVENTURE CLUB

Our current community is more than 5,000 members strong and includes everyone from recent NYC transplants to lifelong residents. Whatever borough you’re from (or city or country, for that matter), we’ll make it easy for you to take full advantage of the unique places and great people this city has to offer.", category: "outdoor adventures")



Membership.create!(user: user5 , group: group22 )
Membership.create!(user: user7 , group: group22 )
Membership.create!(user: user9 , group: group22 )
Membership.create!(user: user11 , group: group22 )
Membership.create!(user: user13 , group: group22 )

discussion64 = Discussion.create!(group: group22 , title: Faker::ChuckNorris.fact)
discussion65 = Discussion.create!(group: group22 , title: Faker::ChuckNorris.fact)
discussion66 = Discussion.create!(group: group22 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user5 , discussion: discussion64 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion64 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion64 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion65 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user13 , discussion: discussion65 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user5 , discussion: discussion65 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user7 , discussion: discussion66 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user9 , discussion: discussion66 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user11 , discussion: discussion66 , body: Faker::ChuckNorris.fact)

event106 = Event.create!(name: "Garment District Behind-the-Scenes Tour With A NYC Fashion Designer", description: "Join New York Adventure Club as we join NOT fashion designer Jenny Lai for a behind-the-scenes trip through Manhattan’s Garment District to see a day in the life of a NYC Fashion Designer.

Our experience will take us into street level, and hidden, fabric stores, notions stores (hardware, ribbons/trimmings), and a factory in the heart of New York’s fashion world. Along each step of the way, Jenny will discuss what fashion designers are looking for when they walk into these jungles of fabric, and the complete fashion cycle from design to retail.

", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group22.id )
event107 = Event.create!(name: "The Adventure Club Behind-the-Scenes Experience @ Grand Central Terminal", description: "Join New York Adventure Club for one of the greatest adventures in New York City: an exclusive, secret, behind-the-scenes tour of Grand Central Terminal.

Several New York Adventure Club members will go on the ultimate NY Adventure Club experience, which includes a visit to the glass catwalks, Operations Control Center, Situation Room, spiral staircase underneath the main information booth, M42 Substation that powers the terminal, Locomotive Simulator Room, and even the secret FDR tracks underneath the Waldorf-Astoria.

While this tour is only meant for VIPs, major institutions, or specific educational groups, NY Adventure Club’s strong relationship with GCT allows us to piggy-back on an official tour.

Click here to see pictures from one of our last Grand Central Terminal experiences!

", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group22.id )
event108 = Event.create!(name: "The New York Adventure Club 3 Year Anniversary Celebration @ The Secret Bar", description: "Join New York Adventure Club for our 3 Year Anniversary Celebration at a secret bar in Midtown East that has been home to our monthly happy hours since 2014!

While the bar is usually only open on Tuesdays and Thursdays, we’re opening it up just for this Friday night celebration, which will also double as the Founder’s birthday party!

The secret bar is inside an active military facility, and while one-day bar membership cards usually cost $10, the fee will be waived for this very special occasion. 2017 annual membership cards can be purchased for $30 (+ one free drink), which will grant you access inside the bar any Tuesday or Thursday. 100% of the money generated from membership cards and drinks goes towards supporting the troops.

Full details of the secret bar including its location will be provided in the confirmation email upon RSVPing.

", event_time: Faker::Time.forward(60), location:"
Undisclosed Location", group_id: group22.id )
event109 = Event.create!(name: "Behind-the-Scenes @ The National Arts Club & 1844 Gilded Age Tilden Mansion", description: "Join New York Adventure Club for an exclusive behind-the-scenes tour of the historic National Arts Club, a private club founded in 1898 dedicated to stimulating, fostering, and promoting public interest in the arts and to educate the American people in the fine arts.

Led by the National Arts Club historian, our experience will include:

* An overview of the house’s rich history and story, from its development for New York Governor Samuel Tilden in 1844, to the home of the National Arts Club in 1906.

* A walkthrough of the historic rooms inside the landmarked Samuel Tilden Mansion at Gramercy Park South, such as the former library, dining room, and parlors.

* A look at John LaFarge stained glass panels, Ellin and Kitson sculptures, and the famous Donald MacDonald stained glass domed library, now the clubhouse bar.

* A NYAC-only look at Donald MacDonald's stained glass domed library from the second floor

", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group22.id )
event110 = Event.create!(name: " Discussions  More Join us!
NYAC Book Club Meet Up: Sweetbitter", description: "The NY Adventure Club Book Club (ACBC) is excited to read our first fiction selection — Sweetbitter by Stephanie Danler!

Please bring your reflections on the book to aid in lively and engaging discussion.

**Solas Bar is cash only.

***Click here if you would like to be added to the Adventure Club Book Club email list for future book selections and information.

—–

About the Book

Twenty-two, and knowing no one, Tess leaves home to begin her adult life in New York City. Thus begins a year that is both enchanting and punishing, in a low-level job at “the best restaurant in New York City.” Grueling hours and a steep culinary learning curve awaken her to the beauty of oysters, the finest Champagnes, the appellations of Burgundy. At the same time, she opens herself to friendships—and love—set against the backdrop of dive bars and late nights.  As her appetites sharpen—for food and wine, but also for knowledge, experience, and belonging—Tess is drawn into a darkly alluring love triangle that will prove to be her most exhilarating and painful lesson of all.

Stephanie Danler deftly conjures the nonstop and purely adrenalized world of the restaurant—conversations interrupted, phrases overheard, and suggestions below the surface. Evoking the infinite possibility of being young in New York with heart-stopping accuracy, Sweetbitter is ultimately about the power of what remains after disillusionment, and the wisdom that comes from experience, sweet and bitter.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group22.id )

Rsvp.create!(user: user5 , event: event106 )
Rsvp.create!(user: user7 , event: event106 )
Rsvp.create!(user: user9 , event: event106 )
Rsvp.create!(user: user11 , event: event107 )
Rsvp.create!(user: user13 , event: event107 )
Rsvp.create!(user: user5 , event: event107 )
Rsvp.create!(user: user7 , event: event108 )
Rsvp.create!(user: user9 , event: event108 )
Rsvp.create!(user: user11 , event: event108 )
Rsvp.create!(user: user13 , event: event109 )
Rsvp.create!(user: user5 , event: event109 )
Rsvp.create!(user: user7 , event: event109 )
Rsvp.create!(user: user9 , event: event110 )
Rsvp.create!(user: user11 , event: event110 )
Rsvp.create!(user: user13 , event: event110 )

group23 = Group.create!(name: "Bodhi Meditation", description: "The American Bodhi Meditation Society is a non-profit organization that teaches meditation for health and wellness.  Bodhi Meditations are 30 minute guided visualizations characterized by soothing music and beautiful imagery that assist in calming your mind, relaxing your body, and increasing your wellbeing.  There are sitting, standing and walking meditations to appeal to those seeking different levels of physical activity.", category: "health & fitness")



Membership.create!(user: user15 , group: group23 )
Membership.create!(user: user2 , group: group23 )
Membership.create!(user: user4 , group: group23 )
Membership.create!(user: user6 , group: group23 )
Membership.create!(user: user8 , group: group23 )

discussion67 = Discussion.create!(group: group23 , title: Faker::ChuckNorris.fact)
discussion68 = Discussion.create!(group: group23 , title: Faker::ChuckNorris.fact)
discussion69 = Discussion.create!(group: group23 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user15 , discussion: discussion67 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion67 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion67 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion68 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user8 , discussion: discussion68 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user15 , discussion: discussion68 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user2 , discussion: discussion69 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user4 , discussion: discussion69 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user6 , discussion: discussion69 , body: Faker::ChuckNorris.fact)

event111 = Event.create!(name: "Bagua Walking Meditation Class", description: "It will energize and strengthen the body while calming the mind, and refining and purifying the spirit. The exercise will open and harmonize the meridians of the body and promote overall fitness.", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group23.id )
event112 = Event.create!(name: "Virtual Meditation Session", description: "The regular virtual meditation practice will be at 9:30 p.m. – 10:15 p.m. Monday through Thursday, New York Time. Participants will practice Meditation of Greater Illumination Monday through Wednesday and Meditation of Purity on Thursdays. Thank you for your continued enthusiasm for Virtual Bodhi Meditation practice. Your suggestions to keep the virtual practitioners’ community live and beneficial for all are always welcome. For more information regarding virtual Bodhi Meditation or request to participate, contact Lan Ma via [masked].", event_time: Faker::Time.backward(14), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group23.id )
event113 = Event.create!(name: "Office Zen Lunchtime Wellness Series", description: "De-stress and recharge during this hour-long session.  Practice a 30 minute guided meditation to clear the mind and loosen the body, then relax afterward to receive the benefits of your practice.  This session is specifically designed to help busy people integrate tools for relaxation into their lives.

Companies such as Google and Aetna have implemented mindfulness courses with great results, with employees reporting less stress, increased clarity of mind and improved quality of life.

Please wear comfortable clothes that you can easily sit or lie down, as there will be time at the end of practice to lie down and relax.  We recommend that you have a light snack up to 30 minutes before the session and then have lunch afterward.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group23.id )
event114 = Event.create!(name: "Introduction to Bodhi Meditation
", description: "Learn about the practice and benefits of Bodhi Meditation. Experience a 30 minute guided meditation designed to deeply relax the mind and body.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group23.id )
event115 = Event.create!(name: "Bagua Walking Meditation Class
", description: "It will energize and strengthen the body while calming the mind, and refining and purifying the spirit. The exercise will open and harmonize the meridians of the body and promote overall fitness.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group23.id )

Rsvp.create!(user: user15 , event: event111 )
Rsvp.create!(user: user2 , event: event111 )
Rsvp.create!(user: user4 , event: event111 )
Rsvp.create!(user: user6 , event: event112 )
Rsvp.create!(user: user8 , event: event112 )
Rsvp.create!(user: user15 , event: event112 )
Rsvp.create!(user: user2 , event: event113 )
Rsvp.create!(user: user4 , event: event113 )
Rsvp.create!(user: user6 , event: event113 )
Rsvp.create!(user: user8 , event: event114 )
Rsvp.create!(user: user15 , event: event114 )
Rsvp.create!(user: user2 , event: event114 )
Rsvp.create!(user: user4 , event: event115 )
Rsvp.create!(user: user6 , event: event115 )
Rsvp.create!(user: user8 , event: event115 )


group24 = Group.create!(name: "Say YES to Your Life!", description: "This is a group where you can meet like minded people who are interested in living life in each moment and Saying Yes to what ever is showing up in our lives. We have found that the more we practice living in the moment the more we are centered in ourselves no matter how life is showing up. Thanks to the teachings of Ariel and Shya Kane we have the tools to do it. Join us for our fun and lively gatherings!", category: "health & fitness")



Membership.create!(user: user10 , group: group24 )
Membership.create!(user: user12 , group: group24 )
Membership.create!(user: user14 , group: group24 )
Membership.create!(user: user1 , group: group24 )
Membership.create!(user: user3 , group: group24 )

discussion70 = Discussion.create!(group: group24 , title: Faker::ChuckNorris.fact)
discussion71 = Discussion.create!(group: group24 , title: Faker::ChuckNorris.fact)
discussion72 = Discussion.create!(group: group24 , title: Faker::ChuckNorris.fact)

Comment.create!(user: user10 , discussion: discussion70 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion70 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion70 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion71 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user3 , discussion: discussion71 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user10 , discussion: discussion71 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user12 , discussion: discussion72 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user14 , discussion: discussion72 , body: Faker::ChuckNorris.fact)
Comment.create!(user: user1 , discussion: discussion72 , body: Faker::ChuckNorris.fact)

event116 = Event.create!(name: "Forgiveness & New Beginnings", description: "The definition of forgiveness is to give up the right to punish, to cancel a debt - make as if it never happened. Wouldn't it be nice to live your life without past regrets or grudges? Most of us do not realize that when we forgive someone, we are actually freeing ourselves. When we forgive, we extricate ourselves from the entanglement of a disturbing situation or circumstance. Join us to discuss the miraculous healing tool of true forgiveness and the possibilities it opens up.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group24.id )
event117 = Event.create!(name: "Listening as an Act of Kindness", description: "True listening, without judgment for another, is one of the simplest and yet most rare gifts in life. We define true listening as actively listening to another with the intention of hearing what is being said from the other's point of view. Join us to explore and discover how this simple act can be a catalyst for kindness to oneself and to others.", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group24.id )
event118 = Event.create!(name: "Live Like You Were Dying", description: "... And I loved deeper, and I spoke sweeter, and I gave forgiveness I’ve been denying, and he said someday I hope you get the chance, to live like you were dyin. – Tim McGraw, Live Like You Were Dying


Join us to explore how to get the most out of each moment, without needing a life-threatening event or dire circumstances to remind you that you are alive.

Here is the link to an episode of Ariel & Shya Kane's radio show, Being Here titled Live Like Your Were Dying.  This was our inspiration for this month's meetup: ", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group24.id )
event119 = Event.create!(name: "Enlightenment 101", description: "When you are truly Being Here your life transforms in an instant and, practically speaking, you are enlightened. Practical Enlightenment  - Ariel & Shya Kane.

Enlightenment isn't a mystical state that requires years of effort to achieve. It is a practical lifestyle that you can have right now. When you discover how to access the current moment - rather than your thoughts, judgments or ideas about how life should be - problems, anxiety, stress and worry cease to dominate your life; your past no longer dictates your present or future and you experience your own perfection. Join us and experience that enlightenment can happen to anyone, anywhere, not just for those meditating on a mountaintop - no effort required!", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group24.id )
event120 = Event.create!(name: "Relationships Made EASY!", description: "It only takes an instant to transform your ability to relate. At this meetup, you will discover what is at the heart of experiencing magic in all of your relationships, especially the one with yourself. If you are interested in having life be stress-free, productive, passionate and most of all - fun! Saying YES to your life is a great way to drop those automatic, habitual complaints and discover both your own brilliance and the beauty of the current moment.

Being a YES to how your life is showing up and not wishing it were different allows you to be the author of your life, rather than the victim of it.   New possibilities appear that never existed before!

", event_time: Faker::Time.forward(60), location: "700 Broadway", latitude: 40.728429, longitude: -73.993871, group_id: group24.id )

Rsvp.create!(user: user10 , event: event116 )
Rsvp.create!(user: user12 , event: event116 )
Rsvp.create!(user: user14 , event: event116 )
Rsvp.create!(user: user1 , event: event117 )
Rsvp.create!(user: user3 , event: event117 )
Rsvp.create!(user: user10 , event: event117 )
Rsvp.create!(user: user12 , event: event118 )
Rsvp.create!(user: user14 , event: event118 )
Rsvp.create!(user: user1 , event: event118 )
Rsvp.create!(user: user3 , event: event119 )
Rsvp.create!(user: user10 , event: event119 )
Rsvp.create!(user: user12 , event: event119 )
Rsvp.create!(user: user14 , event: event120 )
Rsvp.create!(user: user1 , event: event120 )
Rsvp.create!(user: user3 , event: event120 )
