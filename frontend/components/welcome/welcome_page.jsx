import React from 'react';
import ReactPlayer from 'react-player';

const WelcomePage = (props) => (
  <div>
    <div className="video-wrapper">
      <iframe
        className="wrapped-video"
        src="https://www.youtube.com/embed/BvJIfDy6CVQ?wmode=transparent&autoplay=1"
        frameborder="0"
        >
      </iframe>
    </div>
    <div className='explore'>
    </div>
  </div>
);

export default WelcomePage;
