import React from 'react';

class EventEdit extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      name: "",
      description: "",
      location: "",
      time: ""
    };
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount(){
    this.props.fetchCurrentEvent(this.props.params.eventId);
  }

  componentWillReceiveProps(nextProps){
    if(nextProps.route.path.includes("edit") && this.props.location.action === "PUSH"){
      this.setState({ name: nextProps.currentEvent.name, description: nextProps.currentEvent.description, location: nextProps.currentEvent.location, time: nextProps.currentEvent.event_time.slice(0, nextProps.currentEvent.event_time.length - 1)});
    }
  }


  handleSubmit(e){
    e.preventDefault();
    this.props.editEvent(this.state, this.props.routeParams.eventId).then( () => this.props.router.push(`/groups/${this.props.params.groupId}/events/${this.props.params.eventId}/`));
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
