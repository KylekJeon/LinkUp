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

    let eventList;
    if(this.props.currentGroupEvents){
      eventList = this.props.currentGroupEvents.map( (event) => (
        <li key={event.id}>{event.name}</li>
      ));
    }

    return(
      <section className='group-content'>
        <section className='group-description-content'>
          <p className='group-description'>
            {this.props.currentGroup.description}
          </p>
        </section>
        <section className='group-upcoming'>
          <ul>
            {eventList}
          </ul>
        </section>
        <section className='group-past'>
        </section>
      </section>
    );
  }

}


export default GroupPageContent;
