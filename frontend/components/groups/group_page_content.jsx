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
            {event.datetime}, {event.name}, {event.description}
          </li>
        ));
        return (
          <ul key={idx} className="group-page-event-list">
            {lis}
          </ul>
        );
      });

      pastEventList = pastEvents.map((events, idx) => {
        let lis = events.map((event) => (
          <li key={event.id + 5} className="group-page-event-item">
            {event.datetime}, {event.name}, {event.description}
          </li>
        ));
        return (
          <ul key={idx + upcomingEventList.length} className="group-page-event-list">
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
        <section className='group-upcoming'>
          {upcomingEventList}
        </section>
        <section className='group-past'>
          {pastEventList}
        </section>
      </section>
    );
  }

}


export default GroupPageContent;
