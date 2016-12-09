import React from 'react';

class EventPage extends React.Component {
  constructor(props){
    super(props);
    this.addUserToEvent = this.addUserToEvent.bind(this);
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

  render(){
    return(
      <section className='event-page-container group'>
        <button className='event-rsvp-button' onClick={this.addUserToEvent}>RSVP!</button>
        <h1>Coming Soon: {this.props.currentEvent.name}</h1>
        <div className='event-page-date-time'>
          <span className='event-page-date'>Date: {this.props.currentEvent.datetime}</span>
          <span className='event-page-time'>Time:   {this.props.currentEvent.timeOfDay}</span>
        </div>
        <div className='event-page-location'>Location: {this.props.currentEvent.location}</div>
        <div className='event-page-description'>
          <span>What's happening:</span>
          <p>{this.props.currentEvent.description}</p>
        </div>
    </section>
    );
  }
}

export default EventPage;
