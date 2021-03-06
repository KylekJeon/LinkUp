import React from 'react';
import { Link } from 'react-router';
import { createParagraphs } from './../../util/text_style_util';

class GroupPageContent extends React.Component{
  constructor(props){
    super(props);
  }

  componentDidMount(){
    this.props.fetchCurrentGroupEvents(this.props.currentGroupId);
  }

  componentWillReceiveProps(nextProps){
    if(this.props.currentGroupId !== nextProps.currentGroupId){
      nextProps.fetchCurrentGroupEvents(nextProps.currentGroupId);
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
            <div className='group-page-event-item-content'>
              <Link to={`/groups/${event.groupId}/events/${event.id}`} >Event: {event.title}</Link>
              <span>Location: {event.location}</span>
              <span>Time: {event.timeOfDay}</span>
              <div className='group-page-event-paragraphs'>
              <p key={-1}>What We're Doing</p>
              {createParagraphs(event.description)}</div>
            </div>
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
            <div className='group-page-event-item-content'>
              <Link to={`/groups/${event.groupId}/events/${event.id}`} >Event: {event.title}</Link>
              <span>Location: {event.location}</span>
              <span>Time: {event.timeOfDay}</span>
              <div className='group-page-event-paragraphs'>
              <p key={-1}>What We're Doing</p>
              {createParagraphs(event.description)}</div>
            </div>
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
            <div className='group-page-event-paragraphs group-page-description'>
            <p>Who We Are</p> {createParagraphs(this.props.currentGroup.description)}
            </div>
        </section>
        <section className='group-event-box'>
          <h1 className='group-event-box-header'>Upcoming Events</h1>
          {upcomingEventList}
        </section>
        <section className='group-event-box'>
          <h1 className='group-event-box-past-header'>Past Events</h1>
          {pastEventList}
        </section>
      </section>
    );
  }

}


export default GroupPageContent;
