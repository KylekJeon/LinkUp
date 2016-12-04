## Component Hierarchy

**Welcome**
  - Welcome page
  - Login page
  - Signup page

**Front**
  - search-bar
  - event feed
  - nav-bar
  - side-bar

**GroupsContainer**
  - groups page
    + eventContainer
  - group creation page

**EventsContainer**
  - events page
    + eventIndex
  - events creation page

**Calendar Container**
  - calendar

**SearchContainer**
  - search bar


## Routes

|Path|Component|
|--------------|-------------|
|"/"|"App"|
|"/front"|"Front"|
|"/front/events"|"EventsListContainer"|
|"/front/groups"|"GroupListContainer"|
|"/welcome"|"Welcome"|
|"/welcome/login"|"LoginFormContainer"|
|"/welcome/signup"|"SignUpFormContainer"|
|"/group"|"GroupContainer"|
|"/group/create"|"GroupFormContainer"|
|"/group/:groupId"|"GroupIndexContainer"|
|"/group/:groupId/event/:eventId"|"EventContainer"|
|"/group/:groupId/event/create"|"EventFormContainer"|
