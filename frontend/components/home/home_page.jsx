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
      citySelector: false,
      categoryVisible: false
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
    this.submitCategory = this.submitCategory.bind(this);
    this.toggleCategory = this.toggleCategory.bind(this);
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
    const latitude = parseFloat(nextProps.currentUserNextEvent.latitude);
    const longitude = parseFloat(nextProps.currentUserNextEvent.longitude);
    const myLatLng = {lat: latitude, lng: longitude};
    const mapOptions = {
      center: myLatLng,
      zoom: 16,
    };
    this.map = new google.maps.Map(this.mapNode, mapOptions);
    const marker = new google.maps.Marker({
      position: myLatLng,
      map: this.map
    });
  }

  submitCategory(category){
    category = category.split(" ").join("_");
    return (e) => (
      this.props.router.push(`/home/search/${category}`)
    );
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

  toggleCategory(){
    if (this.state.categoryVisible){
      this.setState({ categoryVisible: false });
    } else {
      this.setState({ categoryVisible: true });
    }
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

    const categories = ["sports", "music", "health & fitness", "outdoor adventures", "arts", "social", "career & business", "food & drinks"];
    const categoryList = categories.map((category, idx) => (
      <li key={idx} className='home-category-list-item' onClick={this.submitCategory(category)}>{category}</li>
    ));

    let categoryListClass = "home-category-list ";
    if(this.state.categoryVisible){
      categoryListClass = categoryListClass + " category-active";
    }


    return (
      <section>
        <section className='content-header'>
          <div className='content-header-box'>
            <div className='content-header-next-box group'>
              <div className='content-header-nextlinkup'>
                <h4 className='content-header-text-header'>YOUR NEXT MEETUP</h4>
                <Link to={`/groups/${this.props.currentUserNextEvent.groupId}/events/${this.props.currentUserNextEvent.id}`}><h3>Event: {this.props.currentUserNextEvent.name}</h3></Link>
                <Link to={`/groups/${this.props.currentUserNextEvent.groupId}`}><h4>Hosted By: {this.props.currentUserNextEvent.groupName}</h4></Link>
                <span>{this.props.currentUserNextEvent.datetime}, {this.props.currentUserNextEvent.timeOfDay} @ {this.props.currentUserNextEvent.location}</span>
              </div>
              <div className='content-header-calendar-location'>
                <div id='home-map' ref={ map => this.mapNode = map}></div>
              </div>
            </div>
          </div>
        </section>
        <section className='content-main group'>
          <form className='search-bar group'>
            <input className='search-bar-input' type='text' value={this.state.query} onChange={this.handleSearch}/>
            <button className='search-button' onClick={this.handleSearchSubmit}>Search LinkUps</button>
            <button className='search-category' onClick={this.toggleCategory}>Search Categories
              <ul className={categoryListClass}>
                {categoryList}
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
