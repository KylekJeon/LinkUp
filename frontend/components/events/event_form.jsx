import React from 'react';

class EventForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      name: "",
      description: "",
      location: "",
      event_time: "",
      latitude: "",
      longitude: ""
    };
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.createLocationMap = this.createLocationMap.bind(this);
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.createEvent(this.state, this.props.routeParams.groupId).then( action => this.props.router.push(`/groups/${this.props.routeParams.groupId}/events/${action.currentUserEvents.id}/`));
  }

  componentDidMount(){
    this.createLocationMap();
  }

  componentWillReceiveProps(nextProps){

  }

  update(prop){
    return e => {
      e.preventDefault();
      this.setState({ [prop]: e.currentTarget.value });
    };
  }

  createLocationMap() {
    const map = new google.maps.Map(document.getElementById("search-map"), {
      center: {lat: 40.750197, lng: -73.988107},
      zoom: 13
    });

    // Create the search box and link it to the UI element.
    let input = document.getElementById("event-form-location");
    let searchBox = new google.maps.places.SearchBox(input);

    // Bias the SearchBox results towards current map's viewport.
    map.addListener('bounds_change', function() {
      searchBox.setBounds(map.getBounds());
    });

    let markers = [];
    // Listen for the event fired when the user selects a prediction and retrieve
    // more details for that place.
    const that = this;
    searchBox.addListener('places_changed', function() {
      const places = searchBox.getPlaces();

      if (places.length === 0) {
        return;
      }

      // Clear out the old markers.
      markers.forEach(function(marker) {
        marker.setMap(null);
      });
      markers = [];

      // For each place, get the icon, name and location.
      var bounds = new google.maps.LatLngBounds();
      places.forEach(function(place) {
        if (!place.geometry) {
          console.log("Returned place contains no geometry");
          return;
        }
        var icon = {
          url: place.icon,
          size: new google.maps.Size(71, 71),
          origin: new google.maps.Point(0, 0),
          anchor: new google.maps.Point(17, 34),
          scaledSize: new google.maps.Size(25, 25)
        };

        // Create a marker for each place.
        markers.push(new google.maps.Marker({
          map: map,
          icon: icon,
          title: place.name,
          position: place.geometry.location
        }));

        if (place.geometry.viewport) {
          // Only geocodes have viewport.
          bounds.union(place.geometry.viewport);
        } else {
          bounds.extend(place.geometry.location);
        }
      });
      map.fitBounds(bounds);
      map.setZoom(15);
      const location = places[0].address_components[0].long_name + " " + places[0].address_components[1].long_name;
      const latitude = places[0].geometry.viewport.f.b;
      const longitude = places[0].geometry.viewport.b.b;
      that.setState({ latitude: latitude, longitude: longitude});
      that.setState({ location: location });
    });

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
        <h1 className='event-form-page-header'>Create an Event, Make New Friends</h1>
        <section className='event-form-container'>
          <form className='event-form-form group'>
            <div className='event-form-text'>
              <ul className='event-form-errors'>
                {errors}
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
                <input id='event-form-location' type='text' onChange={this.update("location")} />
              </label>
              <label className='event-form-time-location-label'>When's Your Event?
                <input className='event-form-time' type='datetime-local' onChange={this.update("event_time")} value={this.state.time} />
              </label>
              <div id="search-map">
              </div>
              <button className='event-form-button' onClick={this.handleSubmit}>Create Your Event</button>
            </div>
          </form>
        </section>
      </section>
    );

  }

}

export default EventForm;
