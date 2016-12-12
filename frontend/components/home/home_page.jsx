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
      whichDisplay: "currentUserGroupEvents",
      query: "",
      city: "New York",
      citySelector: false
    };
    this.toggleGroup = this.toggleGroup.bind(this);
    this.toggleCalendar = this.toggleCalendar.bind(this);
    this.fetchAllEvents = this.fetchAllEvents.bind(this);
    this.fetchCurrentUserEvents = this.fetchCurrentUserEvents.bind(this);
    this.fetchCurrentUserGroupEvents = this.fetchCurrentUserGroupEvents.bind(this);
    this.handleSearch = this.handleSearch.bind(this);
    this.handleSearchSubmit = this.handleSearchSubmit.bind(this);
    this.showCities = this.showCities.bind(this);
    this.changeCities = this.changeCities.bind(this);
  }

  componentDidMount() {
    this.props.fetchCurrentUserGroupEvents();
    this.props.fetchCurrentUserNextEvent();
  }

  componentWillReceiveProps(nextProps) {
    this.setState({
      currentUserEvents: nextProps.currentUserEvents,
      allEvents: nextProps.allEvents,
      currentUserGroups: nextProps.currentUserGroups,
      currentUserGroupEvents: nextProps.currentUserGroupEvents
    });
  }

  handleSearch(e){
    e.preventDefault();
    this.setState({ query: e.currentTarget.value });
  }

  handleSearchSubmit(e){
    e.preventDefault();
    if(this.state.query === ""){
      this.props.router.push(`/home/search/all`);
    } else {
      this.props.router.push(`/home/search/${this.state.query}`);
    }
  }

  showCities(e){
    e.preventDefault();
    if(this.state.citySelector){
      this.setState({ citySelector: false });
    } else {
      this.setState({ citySelector: true });
    }
  }

  changeCities(city){
    return (e) => this.setState({ city: city });
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
    this.props.router.push('/home/groups');
  }

  toggleCalendar() {
    this.setState({ groupCalendar: "calendar" });
    this.props.router.push('/home/events');
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
          <Link to={`/groups/${event.groupId}/events/${event.id}`} className='front-page-event-link'>Event: {event.title}</Link>
          <Link to={`/groups/${event.groupId}`} className='front-page-group-link'>Hosted by: {event.groupName}</Link>
          <span>Location: {event.location}</span>
          <span>Time: {event.timeOfDay}</span>
          <p>About: {event.description}</p>
        </li>
      ));
      return (
        <ul key={events[0].id} className="front-page-event-list">
          <h1 className='front-page-event-list-header'>{events[0].datetime}</h1>
          {lis}
        </ul>
      );
    });

    let cityClass = "city-selector-dropdown ";
    if(this.state.citySelector){
      cityClass = cityClass + " city-active";
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
                <Link to={`/events/${this.props.currentUserNextEvent.id}`}><h3>Event: {this.props.currentUserNextEvent.name}</h3></Link>
              <Link to={`/groups/${this.props.currentUserNextEvent.groupId}`}><h5>Hosted By: {this.props.currentUserNextEvent.groupName}</h5></Link>
              </div>
              <div className='content-header-calendar-location'>
                <h3>Date: {this.props.currentUserNextEvent.datetime}</h3>
                <h3>Time: {this.props.currentUserNextEvent.timeOfDay}</h3>
                <h3>Location: {this.props.currentUserNextEvent.location}</h3>
              </div>
            </div>
          </div>
        </section>
        <section className='content-main group'>
          <form className='search-bar group'>
            <input className='search-bar-input' type='text' value={this.state.query} onChange={this.handleSearch}/>
            <button className='search-button' onClick={this.handleSearchSubmit}>Search LinkUps</button>
            <span>Change City</span>
            <button onClick={this.showCities} className='search-bar-city-selector'>
              {this.state.city}
              <ul className={cityClass} >
                <li onClick={this.changeCities("New York")} key={1} >New York</li>
                <li onClick={this.changeCities("Boston")} key={2} >Boston</li>
                <li onClick={this.changeCities("Philadelphia")} key={3} >Philadelphia</li>
              </ul>
            </button>
            <button onClick={this.toggleCalendar} className={calendar}>Calendar</button>
            <button onClick={this.toggleGroup} className={group}>Groups</button>
          </form>
          {this.props.children}
        </section>
      </section>
    );
  }
}

export default HomePage;
