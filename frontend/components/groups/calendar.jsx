import React from 'react';
import fullcalendar from 'fullcalendar';

class Calendar extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      calendarEvents: { events: []}
    };
  }


  componentDidMount() {
    this.props.fetchCurrentGroupEvents(this.props.currentGroupId);
  }

  componentWillReceiveProps(nextProps){
    if(nextProps.currentGroupEvents.length !== 0){
      const events = { events: [] };
      nextProps.currentGroupEvents.forEach((event) => {
        events.events.push({title: event.title, date: new Date(event.year, event.month, event.day), allDay:true });
      });
      this.setState({ calendarEvents: events });
    }
  }

  render() {
    if(this.props.currentGroupEvents.length !== 0){
      $('#calendar').fullCalendar(this.state.calendarEvents);
    }

    return (
      <div id='calendar'></div>
    );
  }
}

export default Calendar;
