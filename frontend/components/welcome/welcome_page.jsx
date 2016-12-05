import React from 'react';
import ReactPlayer from 'react-player';
import { Link } from 'react-router';

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
      <h3 className='explore-header'>Explore</h3>
      <section className='explore-first-row'>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-1 welcome-pic' src={"http://purewellnesschicago.com/index_files/rvm1.jpg"} />
          </Link>
          <pre>
            Sports
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-2 welcome-pic' src={"http://www.clipartkid.com/images/77/small-music-notes-clipart-fRzIRF-clipart.png"} />
          </Link>
          <pre>
            Music
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-3 welcome-pic' src={"http://nutritionfacts.org/wp-content/themes/NutritionFacts/img/heart.png"} />
          </Link>
          <pre>
            Health & Fitness
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-4 welcome-pic' src={"http://www.pngmart.com/files/1/Outdoor-Sports-Activities-PNG-Transparent-Image.png"} />
          </Link>
          <pre>
            Outdoor Adventures
          </pre>
        </label>
      </section>
      <section className='explore-second-row'>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-5 welcome-pic' src={"http://masterpiecemanager.com/wp-content/uploads/2012/07/art-management.png"} />
          </Link>
          <pre>
            Arts
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-6 welcome-pic' src={"http://www.zeinmarketing.co.uk/wp-content/uploads/2014/10/Social-Media-Banners-No-Background.png"} />
          </Link>
          <pre>
            Social
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-7 welcome-pic' src={"https://openclipart.org/image/2400px/svg_to_png/242209/Business-Meeting-No-Background.png"} />
          </Link>
          <pre>
            Career & Business
          </pre>
        </label>
        <label>
          <Link to='/' className='welcome-pic-links'>
            <img className='pic-8 welcome-pic' src={"http://i.kinja-img.com/gawker-media/image/upload/s--tgQAbik9--/vdj8mhwn5kgsn5gmwnl5.png"} />
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
