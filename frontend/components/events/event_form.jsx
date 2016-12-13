import React from 'react';

class EventForm extends React.Component {
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
    this.props.createEvent(this.state, this.props.routeParams.groupId).then( action => this.props.router.push(`/groups/${this.props.routeParams.groupId}/events/${action.currentUserEvents.id}/`));
  }


  componentWillReceiveProps(nextProps){

  }

  update(prop){
    return e => {
      e.preventDefault();
      this.setState({ [prop]: e.currentTarget.value });
    };
  }

  render() {

    return (
      <section className='event-form-page group'>
        <h1 className='event-form-page-header'>Create an Event, Make New Friends</h1>
        <section className='event-form-container'>
          <form className='event-form-form group'>
            <div className='event-form-text'>
              <ul className='event-form-errors'>
              </ul>
              <label className='event-form-text-label'>What's Your Event Called?
                <br/>
                <input className='event-form-name' type='text' onChange={this.update("name")} value={this.state.name} />
              </label>
              <br/>
              <label className='event-form-text-label'>What's Your Event About?
                <br/>
                <textarea className='event-form-description' onChange={this.update("description")} value={this.state.description} />
              </label>
            </div>
            <div className='event-form-time-location'>
              <label className='event-form-time-location-label'>Where's Your Event?
                <input className='event-form-location' type='text' onChange={this.update("location")} value={this.state.location} />
              </label>
              <label className='event-form-time-location-label'>When's Your Event?
                <input className='event-form-time' type='datetime-local' onChange={this.update("event_time")} value={this.state.time} />
              </label>
              <button className='event-form-button' onClick={this.handleSubmit}>Create Your Event</button>
            </div>
          </form>
        </section>
      </section>
    );

  }

}

export default EventForm;
