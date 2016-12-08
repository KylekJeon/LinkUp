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
      whichDisplay: "currentUserGroupEvents"
    };
    this.toggleGroup = this.toggleGroup.bind(this);
    this.toggleCalendar = this.toggleCalendar.bind(this);
    this.fetchAllEvents = this.fetchAllEvents.bind(this);
    this.fetchCurrentUserEvents = this.fetchCurrentUserEvents.bind(this);
  }

  componentDidMount(){
    this.props.fetchUserGroups(this.props.currentUser.id);
    this.props.fetchCurrentUserEvents();
  }

  componentWillReceiveProps(nextProps){
    this.setState({
      currentUserEvents: nextProps.currentUserEvents,
      allEvents: nextProps.allEvents,
      currentUserGroups: nextProps.currentUserGroups
    });
  }

  fetchAllEvents(e){
    e.preventDefault();
    this.props.fetchEvents();
    this.setState({ whichDisplay: "allEvents" });
  }

  fetchCurrentUserEvents(e){
    e.preventDefault();
    this.props.fetchCurrentUserEvents(this.props.currentUser.id);
    this.setState({ whichDisplay: "CurrentUserEvents" });
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
    let Events;
    if(this.state.groupCalendar === 'calendar'){
      calendar = calendar + "search-chosen";
    } else {
      group = group + "search-chosen";
    }
    if(this.state.currentUserEvents[0]){
      Events = this.state.currentUserEvents.map((event) => (
        <li key={event.id}>
          <div className='content-list-time'>{event.event_time}</div>
          <span className='content-list-item content-list-first'>{event.name}</span>
          <span className='content-list-item content-list-middle'>{event.location}</span>
          <span className='content-list-item content-list-last'>{event.description}</span>
        </li>
      ));
    } else if (this.state.allEvents[0]){
      Events = this.state.allEvents.map((event) => (
        <li key={event.id}>
          <div className='content-list-time'>{event.event_time}</div>
          <span className='content-list-item content-list-first'>{event.name}</span>
          <span className='content-list-item content-list-middle'>{event.location}</span>
          <span className='content-list-item content-list-last'>{event.description}</span>
        </li>
      ));
    }

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
            <ul className='content-main-list group'>
              {Events}
            </ul>
          </div>
          <ul className='content-main-list-linkups'>
            <li><button onClick={this.fetchAllEvents}>All LinkUps</button></li>
            <li><button onClick={this.fetchCurrentUserEvents}>My LinkUps</button></li>
            <li><button onClick={this.fetchCurrentUserEvents}>I'm Going!</button></li>
          </ul>
        </section>
      </section>
    );
  }
}

export default HomePage;
