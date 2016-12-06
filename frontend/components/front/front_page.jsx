import React from 'react';
import { Link } from 'react-router';


class FrontPage extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      groupCalendar: "calendar"
    };
    this.toggleGroup = this.toggleGroup.bind(this);
    this.toggleCalendar = this.toggleCalendar.bind(this);
  }

  toggleGroup() {
    this.setState({ groupCalendar: "group"});
  }

  toggleCalendar() {
    this.setState({ groupCalendar: "calendar" });
  }

  render() {
    let group = "search-bar-group ";
    let calendar = "search-bar-calendar ";
    if(this.state.groupCalendar === 'calendar'){
      calendar = calendar + "search-chosen";
    } else {
      group = group + "search-chosen";
    }

    return (
      <section>
        <section className='content-header'>
          <div className='content-header-box'>
            <div className='content-header-text'>
              <h4 className='content-header-text-header'>YOUR NEXT MEETUP</h4>
            </div>
            <div className='content-header-next-box group'>
              <div className='content-header-nextlinkup'>
                <h3>So You've Been Accepted to App Academy</h3>
                <h4>How to be Okay With Doing Nothing but Coding With Your Life and Losing All Friends and Loved Ones for Three Months</h4>
                <h5>Hosted by the Masochist Association of New York</h5>
              </div>
              <div className='content-header-calendar-location'>
                <h3>Date: Forever. This is your life now</h3>
                <h3>Location: New York City</h3>
              </div>
            </div>
          </div>
        </section>
        <section className='content-main group'>
          <form className='search-bar group'>
            <input className='search-bar-input' type='text' placeholder="All LinkUps"/>
            <p> Within 5 miles of New York </p>
            <button onClick={this.toggleCalendar} className={calendar}>Calendar</button>
            <button onClick={this.toggleGroup} className={group}>Groups</button>
          </form>
          <div className='content-main-list-day'>
            <h4>THURSDAY, DECEMBER 22</h4>
            <ul className='content-main-list group'>
              <li>
                <div className='content-list-time'>7:00PM</div>
                <span className='content-list-item content-list-first'>Happy Birthday To Me</span>
                <span className='content-list-item content-list-middle'>Birthday Party? Nah, App Academy Man</span>
                <span className='content-list-item content-list-last'>Everyone in class going</span>
              </li>
              <li>
                <div className='content-list-time'>8:00PM</div>
                <span className='content-list-item content-list-first'>freak out about fullstack</span>
                <span className='content-list-item content-list-middle'>Who's staying overnight?</span>
                <span className='content-list-item content-list-last'>Most people in class going</span>
              </li>
              <li>
                <div className='content-list-time'>9:00PM</div>
                <span className='content-list-item content-list-first'>slumber party at the app</span>
                <span className='content-list-item content-list-middle'>I hope you brought your pillow armor</span>
                <span className='content-list-item content-list-last'>the brave, the bold, the fearless going</span>
              </li>
            </ul>
          </div>
          <div className='content-main-list-day'>
            <h4>THURSDAY, DECEMBER 22</h4>
            <ul className='content-main-list group'>
              <li>
                <div className='content-list-time'>7:00PM</div>
                <span className='content-list-item content-list-first'>Happy Birthday To Me</span>
                <span className='content-list-item content-list-middle'>Birthday Party? Nah, App Academy Man</span>
                <span className='content-list-item content-list-last'>Everyone in class going</span>
              </li>
              <li>
                <div className='content-list-time'>8:15PM</div>
                <span className='content-list-item content-list-first'>freak out about fullstack</span>
                <span className='content-list-item content-list-middle'>Who's staying overnight?</span>
                <span className='content-list-item content-list-last'>Most people in class going</span>
              </li>
              <li>
                <div className='content-list-time'>9:00PM</div>
                <span className='content-list-item content-list-first'>slumber party at the app</span>
                <span className='content-list-item content-list-middle'>I hope you brought your pillow armor</span>
                <span className='content-list-item content-list-last'>the brave, the bold, the fearless going</span>
              </li>
            </ul>
          </div>
          <ul className='content-main-list-linkups'>
            <li><Link to='/'>All LinkUps</Link></li>
            <li><Link to='/'>My LinkUps & Suggestions</Link></li>
            <li><Link to='/'>My LinkUps</Link></li>
            <li><Link to='/'>I'm going</Link></li>
          </ul>
        </section>
      </section>
    );
  }
}

export default FrontPage;
