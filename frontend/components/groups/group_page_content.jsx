import React from 'react';

class GroupPageContent extends React.Component{
  constructor(props){
    super(props);
  }

  componentDidMount(){
    this.props.fetchCurrentGroupEvents(this.props.currentGroupId);
  }

  componentWillReceiveProps(nextProps){
    if(this.props.currentGroup.id !== nextProps.currentGroup.id){
      nextProps.fetchCurrentGroupEvents(this.props.currentGroupId);
    }
  }

  render() {
    let upcomingEvents = [];
    let pastEvents = [];
    let sortedEvents;
    let upcomingEventList;
    let pastEventList;

    if(this.props.currentGroupEvents){
      sortedEvents = this.props.currentGroupEvents.sort(
        function(a,b){
          if(a.time < b.time) return -1;
          else if(a.time > b.time) return 1;
          else return 0;}
        );

      sortedEvents.forEach( (event) => {
        if(event.time <= new Date().getTime()){
          if (pastEvents[0] === undefined){
            pastEvents.unshift([event]);
          } else if (pastEvents[0][0].sameDay === event.sameDay) {
            pastEvents[0].unshift(event);
          } else {
            pastEvents.unshift([event]);
          }
        } else {
          if (upcomingEvents[0] === undefined){
            upcomingEvents.push([event]);
          } else if (upcomingEvents[upcomingEvents.length-1][0].sameDay === event.sameDay) {
            upcomingEvents[upcomingEvents.length-1].push(event);
          } else {
            upcomingEvents.push([event]);
          }
        }
      });

      upcomingEventList = upcomingEvents.map((events, idx) => {
        let lis = events.map((event) => (
          <li key={event.id} className="group-page-event-item">
            <a href="#">Event: {event.name}</a>
            <span>Location: {event.location}</span>
            <span>Time: {event.timeOfDay}</span>
            <p>About: {event.description}</p>
          </li>
        ));
        return (
          <ul key={idx} className="group-page-upcoming-list">
            <h1>{events[0].datetime}</h1>
            {lis}
          </ul>
        );
      });

      pastEventList = pastEvents.map((events, idx) => {
        let lis = events.map((event) => (
          <li key={event.id} className="group-page-event-item group-page-event-item-past">
            <a href="#">Event: {event.name}</a>
            <span>Location: {event.location}</span>
            <span>Time: {event.timeOfDay}</span>
            <p>About: {event.description}</p>
          </li>
        ));
        return (
          <ul key={idx} className="group-page-past-list">
            <h1>{events[0].datetime}</h1>
            {lis}
          </ul>
        );
      });
    }

    return(
      <section className='group-content'>
        <section className='group-description-content'>
          <p className='group-description'>
            {this.props.currentGroup.description}
          </p>
        </section>
        <section className='group-event-box'>
          <h1>Upcoming Events</h1>
          {upcomingEventList}
        </section>
        <section className='group-event-box'>
          <h1>Past Events</h1>
          {pastEventList}
        </section>
      </section>
    );
  }

}


export default GroupPageContent;
