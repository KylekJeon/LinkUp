import React from 'react';

class EventEdit extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      name: "",
      description: "",
      location: "",
      event_time: ""
    };
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.editEvent(this.state, this.props.routeParams.eventId).then( action => this.props.router.push(`/groups/${this.props.currentGroup.id}/events/${action.currentUserEvents.id}/`));
  }


  update(prop){
    return e => {
      e.preventDefault();
      this.setState({ [prop]: e.currentTarget.value });
    };
  }

  render() {
    let errors;
    if(this.props.errors.length > 0){
      errors = this.props.errors.map( (error, idx) =>
      <li key={idx}>{error}</li>
    );
    }

    return (
      <section className='event-form-page group'>
        <h1 className='event-form-page-header'>Change Your Event, Draw More People</h1>
        <section className='event-form-container'>
          <form className='event-form-form group'>
            <div className='event-form-text'>
              <ul className='event-form-errors'>
                {errors}
              </ul>
              <label className='event-form-text-label'>Change Event Name
                <br/>
                <input className='event-form-name' type='text' onChange={this.update("name")} value={this.state.name} />
              </label>
              <br/>
              <label className='event-form-text-label'>Change Event Description
                <br/>
                <textarea className='event-form-description' onChange={this.update("description")} value={this.state.description} />
              </label>
            </div>
            <div className='event-form-time-location'>
              <label className='event-form-time-location-label'>Change Event Location
                <input className='event-form-location' type='text' onChange={this.update("location")} value={this.state.location} />
              </label>
              <label className='event-form-time-location-label'>Change Event Time
                <input className='event-form-time' type='datetime-local' onChange={this.update("event_time")} value={this.state.time} />
              </label>
              <button className='event-form-button' onClick={this.handleSubmit}>Edit Your Event</button>
            </div>
          </form>
        </section>
      </section>
    );

  }

}

export default EventEdit;
