import React from 'react';

class GroupPageContent extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      group: {}
    };
  }

  componentWillReceiveProps(nextProps){
    this.setState({group: nextProps.group});
  }

  render() {
    return(
      <section className='group-content'>
        <section className='group-description-content'>
          <p className='group-description'>
            {this.state.group.description}
          </p>
        </section>
        <section className='group-upcoming'>
        </section>
        <section className='group-past'>
        </section>
      </section>
    );
  }

}


export default GroupPageContent;
