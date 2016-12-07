import React from 'react';
import ReactPlayer from 'react-player';
import { Link } from 'react-router';

const WelcomePage = (props) => (
  <div>
    <div className="video-wrapper">
      <iframe
        className="wrapped-video"
        src="https://www.youtube.com/embed/BvJIfDy6CVQ?wmode=transparent&autoplay=1"
        frameBorder="0"
        >
      </iframe>
    </div>
    <div className='explore'>
      <h3 className='explore-header'>Explore</h3>
      <section className='explore-first-row'>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-1 welcome-pic' src={window.assets.sportsImage} />
          </Link>
          <pre>
            Sports
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-2 welcome-pic' src={window.assets.musicImage} />
          </Link>
          <pre>
            Music
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-3 welcome-pic' src={window.assets.healthImage} />
          </Link>
          <pre>
            Health & Fitness
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-4 welcome-pic' src={window.assets.outdoorImage} />
          </Link>
          <pre>
            Outdoor Adventures
          </pre>
        </label>
      </section>
      <section className='explore-second-row'>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-5 welcome-pic' src={window.assets.artsImage} />
          </Link>
          <pre>
            Arts
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-6 welcome-pic' src={window.assets.socialImage} />
          </Link>
          <pre>
            Social
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-7 welcome-pic' src={window.assets.businessImage} />
          </Link>
          <pre>
            Career & Business
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-8 welcome-pic' src={window.assets.foodImage} />
          </Link>
          <pre>
            Food & Drinks
          </pre>
        </label>
      </section>
    </div>
  </div>
);

export default WelcomePage;
