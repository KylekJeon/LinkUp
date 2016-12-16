import React from 'react';
import { Link } from 'react-router';
import Infinite from 'react-infinite';
import { createParagraphs } from './../../util/text_style_util';
import LoadingIcon from './loading_icon';

const PAGE = 3;

class HomePageEvents extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      currentUserEvents: [],
      allEvents: [],
      numToShow: PAGE,
      currentUserGroups: [],
      currentUserGroupEvents: [],
      whichDisplay: "currentUserGroupEvents"
    };
    this.fetchAllEvents = this.fetchAllEvents.bind(this);
    this.fetchCurrentUserEvents = this.fetchCurrentUserEvents.bind(this);
    this.fetchCurrentUserGroupEvents = this.fetchCurrentUserGroupEvents.bind(this);
  }

  componentDidMount() {
    this.props.fetchCurrentUserGroupEvents();
    window.onscroll = (e) => {
      if (pageYOffset >= (document.body.clientHeight / 3 )) {
        this.setState({ numToShow: this.state.numToShow + PAGE });
      }
    };
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

  render() {
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

    const Events = groupedEvents.slice(0, this.state.numToShow).map((events, idx) => {
      let lis = events.map((event) => (
        <li key={event.id} className="front-page-event-item">
          <Link to={`/groups/${event.groupId}/events/${event.id}`} className='front-page-event-link'>Event: {event.title}</Link>
          <Link to={`/groups/${event.groupId}`} className='front-page-group-link'>Hosted by: {event.groupName}</Link>
          <span>Location: {event.location}</span>
          <span>Time: {event.timeOfDay}</span>
          <span>About: {createParagraphs(event.description)}</span>
        </li>
      ));
      return (
        <ul key={events[0].id} className="front-page-event-list">
          <h1 className='front-page-event-list-header'>{events[0].datetime}</h1>
          {lis}
        </ul>
      );
    });


    if (this.props.loading) {
      return <section className="content-loading"><LoadingIcon /></section>;
    }
    return (
      <section>
        <div className='content-main-list-day'>
          {Events}
        </div>
        <div className='content-main-list-linkups'>
          <button onClick={this.fetchAllEvents}>All LinkUp Events</button>
          <button onClick={this.fetchCurrentUserGroupEvents}>My LinkUp Events</button>
          <button onClick={this.fetchCurrentUserEvents}>I'm Going!</button>
        </div>
      </section>
    );
  }
}

export default HomePageEvents;
