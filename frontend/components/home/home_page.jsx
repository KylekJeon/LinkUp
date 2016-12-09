import React from 'react';
import { Link } from 'react-router';


class HomePage extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      groupCalendar: "calendar",
      currentUserEvents: [],
      allEvents: [],
      currentUserGroups: [],
      currentUserGroupEvents: [],
      whichDisplay: "currentUserGroupEvents"
    };
    this.toggleGroup = this.toggleGroup.bind(this);
    this.toggleCalendar = this.toggleCalendar.bind(this);
    this.fetchAllEvents = this.fetchAllEvents.bind(this);
    this.fetchCurrentUserEvents = this.fetchCurrentUserEvents.bind(this);
    this.fetchCurrentUserGroupEvents = this.fetchCurrentUserGroupEvents.bind(this);
  }

  componentDidMount() {
    this.props.fetchCurrentUserGroupEvents();
  }

  componentWillReceiveProps(nextProps) {
    this.setState({
      currentUserEvents: nextProps.currentUserEvents,
      allEvents: nextProps.allEvents,
      currentUserGroups: nextProps.currentUserGroups,
      currentUserGroupEvents: nextProps.currentUserGroupEvents
    });
  }

  fetchAllEvents(e) {
    e.preventDefault();
    this.props.fetchEvents();
    this.setState({ whichDisplay: "allEvents" });
  }

  fetchCurrentUserEvents(e) {
    e.preventDefault();
    this.props.fetchCurrentUserEvents();
    this.setState({ whichDisplay: "currentUserEvents" });
  }

  fetchCurrentUserGroupEvents(e) {
    e.preventDefault();
    this.props.fetchCurrentUserGroupEvents();
    this.setState({ whichDisplay: "currentUserGroupEvents"});
  }

  toggleGroup() {
    this.setState({ groupCalendar: "group"});
  }

  toggleCalendar() {
    this.setState({ groupCalendar: "calendar" });
  }

  render() {
    let group = "search-bar-group ";
    let calendar = "search-bar-calendar ";
    if(this.state.groupCalendar === 'calendar'){
      calendar = calendar + "search-chosen";
    } else {
      group = group + "search-chosen";
    }

    let whichEventDisplay;
    if (this.state.whichDisplay === "currentUserGroupEvents") {
      whichEventDisplay = this.state.currentUserGroupEvents;
    } else if (this.state.whichDisplay === "allEvents") {
      whichEventDisplay = this.state.allEvents;
    } else if (this.state.whichDisplay === "currentUserEvents") {
      whichEventDisplay = this.state.currentUserEvents;
    }

    whichEventDisplay = whichEventDisplay.sort(
      function(a,b){
        if(a.time < b.time) return -1;
        else if(a.time > b.time) return 1;
        else return 0;}
      );

    const groupedEvents = [];

    whichEventDisplay.forEach( (event) => {
      if(event.time >= new Date().getTime()){
        if(groupedEvents[0] === undefined){
          groupedEvents.push([event]);
        } else if (groupedEvents[groupedEvents.length-1][0].sameDay === event.sameDay){
          groupedEvents[groupedEvents.length-1].push(event);
        } else {
          groupedEvents.push([event]);
        }
      }
    });

    const Events = groupedEvents.map((events, idx) => {
      let lis = events.map((event) => (
        <li key={event.id} className="front-page-event-item">
          <Link to={`/groups/${event.groupId}/events/${event.id}`} className='front-page-event-link'>Event: {event.name}</Link>
          <Link to={`/groups/${event.groupId}`} className='front-page-group-link'>Hosted by: {event.groupName}</Link>
          <span>Location: {event.location}</span>
          <span>Time: {event.timeOfDay}</span>
          <p>About: {event.description}</p>
        </li>
      ));
      return (
        <ul key={events[0].id} className="front-page-event-list">
          <h1>{events[0].datetime}</h1>
          {lis}
        </ul>
      );
    });


    return (
      <section>
        <section className='content-header'>
          <div className='content-header-box'>
            <div className='content-header-text'>
              <h4 className='content-header-text-header'>YOUR NEXT MEETUP</h4>
            </div>
            <div className='content-header-next-box group'>
              <div className='content-header-nextlinkup'>
                <h3>So You've Been Accepted to App Academy</h3>
                <h4>How to be Okay With Doing Nothing but Coding With Your Life and Losing All Friends and Loved Ones for Three Months</h4>
                <h5>Hosted by the Masochist Association of New York</h5>
              </div>
              <div className='content-header-calendar-location'>
                <h3>Date: Forever. This is your life now</h3>
                <h3>Location: New York City</h3>
              </div>
            </div>
          </div>
        </section>
        <section className='content-main group'>
          <form className='search-bar group'>
            <input className='search-bar-input' type='text' placeholder="All LinkUps"/>
            <p> Within 5 miles of New York </p>
            <button onClick={this.toggleCalendar} className={calendar}>Calendar</button>
            <button onClick={this.toggleGroup} className={group}>Groups</button>
          </form>
          <div className='content-main-list-day'>
            {Events}
          </div>
          <ul className='content-main-list-linkups'>
            <li><button onClick={this.fetchAllEvents}>All LinkUps</button></li>
            <li><button onClick={this.fetchCurrentUserGroupEvents}>My LinkUps</button></li>
            <li><button onClick={this.fetchCurrentUserEvents}>I'm Going!</button></li>
          </ul>
        </section>
      </section>
    );
  }
}

export default HomePage;
