import React from 'react';
import { createParagraphs } from './../../util/text_style_util';
import { Link } from 'react-router';

class EventPage extends React.Component {
  constructor(props){
    super(props);
    this.addUserToEvent = this.addUserToEvent.bind(this);
    this.removeUserFromEvent = this.removeUserFromEvent.bind(this);
  }

  componentDidMount(){
    this.props.fetchCurrentEvent(this.props.currentEventId);
    this.props.fetchCurrentEventUsers(this.props.currentEventId);
    this.props.fetchCurrentGroupAdmins(this.props.params.groupId);
  }

  componentWillReceiveProps(nextProps){
    if(this.props.currentEventId !== nextProps.currentEventId){
      nextProps.fetchCurrentGroupEvents(nextProps.currentEventId);
    } else if (this.props.currentEventUsers.length !== nextProps.currentEventUsers.length) {
      nextProps.fetchCurrentEventUsers(nextProps.currentEventId);
    }
    const latitude = parseFloat(nextProps.currentEvent.latitude);
    const longitude = parseFloat(nextProps.currentEvent.longitude);
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
    let editButton;

    if(this.props.currentEventUsers.length > 0){
      userList = this.props.currentEventUsers.map ((user) => (
        <li key={user.id} className="event-page-user-list-items">{user.first_name} {user.last_name}</li>
      ));
      userIdList = this.props.currentEventUsers.map((user) => (
        parseInt(user.id)
      ));
    }
    if(!userIdList || !userIdList.includes(this.props.currentUser.id)){
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

    if(this.props.currentGroupAdminIds.length >= 1){
      if(this.props.currentGroupAdminIds.includes(this.props.currentUser.id)){
        editButton = <Link className='event-edit-button' to={`/groups/${this.props.params.groupId}/events/${this.props.currentEvent.id}/edit`}>Edit Event</Link>;
      }
    }

    return(
      <section className='event-page'>
        <section className='event-page-container group'>
          <section className='event-page-content'>
            <h1>Coming Soon: {this.props.currentEvent.name}</h1>
            <div className='event-page-date-time'>
              <span className='event-page-date'>Date: {this.props.currentEvent.datetime}</span>
              <span className='event-page-time'>Time:   {this.props.currentEvent.timeOfDay}</span>
            </div>
            <div className='event-page-location'>Location: {this.props.currentEvent.location}</div>
            <div id='map-container' ref={ map => this.mapNode = map}></div>
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
            {editButton}
          </section>
        </section>
      </section>
    );
  }
}

export default EventPage;
