#LinkUp

[LinkUp Live](https://linkupapplication.herokuapp.com)

LinkUp is a full-stack web application inspired by Meetup. It utilizes Ruby on Rails on the backend, a PostgreSQL databse, and React.js with a redux architectural framework on the frontend.

## Features & Implementation

### LinkUps - The Heart of LinkUp

Linkups are groups created by users to bring together like-minded individuals who want to organize events related to the interests of the LinkUp group. The groups are stored as a single table in the database, containing `id`, `name`, `description`, `created_at`, `updated_at`, and `category`. Groups have many users through a memberships association table, has many events, has many admins through an administrators association table, and has many discussions, which the members of the group can utilize to converse about different topics.

Groups are rendered in 5 different component/container pairs, with a component for The group header/description and user-list being the parent component, and one of group-events, group-calendar, group-forum, and group-edit pages being a child component nested underneath the overarching group-page container.

![image of group page](wireframes/Group_page_wireframe.png)

Based on the buttons of the header, the rendered child component is decided, by using react-router to go to the route path that holds the child container. The Layout of having the group header and side-bar in place with a central portion of the page left to render dynamic content allows for a clean look and a clean architecture.

### Events - the backbone of LinkUp

Events are considered to be a component in and of itself, but is nested underneath the group page. The reason is that there are no events that stand-alone; An event must be created under a group. They are, however, different and require their own unique subsets of containers and components, and thus are described in their own section.

Events are nested underneath the group page, and replace the content of the group page. The Group page contains a list of events, and if one is clicked on, then it takes you to the group show page. An Administrator of a group can create and edit events.

Because Events require their own logic and props, It was a class component vs a functional compnent.

![image of event page](wireframes/event_page.png)


### Homepage - tying it all together

The front/home page of the app is where everything comes together. While Groups and Events are the purpose of LinkUp, the front page is where you utilize the application. The contents are 100% dynamically loaded, and only the buttons are static.

The features on the front-page are as follows: events list, sorted by date and grouped by day, where you have the option of looking at only the events you are rsvped to, the events of the groups that you belong to, or all the events. This falls under the "calendar" portion of the front page.

If you toggle the group button, then it renders a container which holds all of the LinkUps you belong to. The Search button will render a similar container to the group button, but will hold all the groups which pertain to your search query. finally, in the header portion of the front page, your closest upcoming event is dynamically loaded.

On the nav bar, you have a link to create a new Linkup, a button to log out or view your profile page, and a logo link that takes you back to the home page, which are present in every page on the website once you are logged in.


![image of home page](wireframes/home_page.png)



## Future Directions for the Project

in addition to the present features, I plan to continue to polish this app. the Next steps for LinkUp are listed below.

### City Filter

Adding a feature in which you can create events and groups for different cities, so that each city and nearby areas can have a small, minified-version of LinkUp available to them, with only the LinkUps in close enough proximity to the user to be of actual value

### Direct Messaging

Allowing users to message each other on the app to leave messages and plan between LinkUp Members

### Event Comments

Leaving comments for events for those who rsvped


### Ratings

Allowing users to rate events that they attended
