import React from 'react';
import { createParagraphs } from './../../util/text_style_util';

class EventPage extends React.Component {
  constructor(props){
    super(props);
    this.addUserToEvent = this.addUserToEvent.bind(this);
    this.removeUserFromEvent = this.removeUserFromEvent.bind(this);
  }

  componentDidMount(){
    this.props.fetchCurrentEvent(this.props.currentEventId);
    this.props.fetchCurrentEventUsers(this.props.currentEventId);
  }

  componentWillReceiveProps(nextProps){
    if(this.props.currentEventId !== nextProps.currentEventId){
      nextProps.fetchCurrentGroupEvents(nextProps.currentEventId);
    } else if (this.props.currentEventUsers.length !== nextProps.currentEventUsers.length) {
      nextProps.fetchCurrentEventUsers(nextProps.currentEventId);
    }
  }

  addUserToEvent(e){
    e.preventDefault();
    this.props.addUserToEvent(this.props.currentEventId);
  }

  removeUserFromEvent(e){
    e.preventDefault();
    this.props.removeUserFromEvent(this.props.currentEventId);
  }

  render(){
    let userList;
    let userIdList;
    let rsvp;
    if(this.props.currentEventUsers.length > 0){
      userList = this.props.currentEventUsers.map ((user) => (
        <li key={user.id} className="event-page-user-list-items">{user.first_name} {user.last_name}</li>
      ));
      userIdList = this.props.currentEventUsers.map((user) => (
        parseInt(user.id)
      ));
      if(!userIdList.includes(this.props.currentUser.id)){
        rsvp = <div className='event-page-rsvp'>
               <span className='event-rsvp-question'>Interested?</span>
               <button className='event-rsvp-button' onClick={this.addUserToEvent}>RSVP!</button>
               </div>;
      } else {
        rsvp = <div className='event-page-rsvp'>
               <span className='event-rsvp-question'>Your RSVP: Yes</span>
               <button className='event-rsvp-button' onClick={this.removeUserFromEvent}>Unattend</button>
               </div>;
      }

    }


    return(
      <section className='event-page-container group'>
        <section className='event-page-content'>
          <h1>Coming Soon: {this.props.currentEvent.title}</h1>
          <div className='event-page-date-time'>
            <span className='event-page-date'>Date: {this.props.currentEvent.datetime}</span>
            <span className='event-page-time'>Time:   {this.props.currentEvent.timeOfDay}</span>
          </div>
          <div className='event-page-location'>Location: {this.props.currentEvent.location}</div>
          <div className='event-page-description'>
            <span>What We're Doing</span>
            {createParagraphs(this.props.currentEvent.description)}
          </div>
        </section>
        <section className='event-page-users group'>
          {rsvp}
          <ul className='event-page-user-list'>
            Attending:
            {userList}
          </ul>
        </section>
      </section>
    );
  }
}

export default EventPage;
