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
      <h3 className='explore-header'>Explore</h3>
      <section className='explore-first-row'>
        <label>
          <img className='pic-1' src={"http://purewellnesschicago.com/index_files/rvm1.jpg"} />
          <pre>
            Sports
          </pre>
        </label>
        <label>
          <img className='pic-2' src={"http://www.clipartkid.com/images/77/small-music-notes-clipart-fRzIRF-clipart.png"} />
          <pre>
            Music
          </pre>
        </label>
        <label>
          <img className='pic-3' src={"http://nutritionfacts.org/wp-content/themes/NutritionFacts/img/heart.png"} />
          <pre>
            Health & Fitness
          </pre>
        </label>
        <label>
          <img className='pic-4' src={"http://www.pngmart.com/files/1/Outdoor-Sports-Activities-PNG-Transparent-Image.png"} />
          <pre>
            Outdoor Adventures
          </pre>
        </label>
      </section>
      <section className='explore-second-row'>
        <label>
          <img className='pic-5' src={"http://masterpiecemanager.com/wp-content/uploads/2012/07/art-management.png"} />
          <pre>
            Arts
          </pre>
        </label>
        <label>
          <img className='pic-6' src={"http://www.zeinmarketing.co.uk/wp-content/uploads/2014/10/Social-Media-Banners-No-Background.png"} />
          <pre>
            Social
          </pre>
        </label>
        <label>
          <img className='pic-7' src={"https://openclipart.org/image/2400px/svg_to_png/242209/Business-Meeting-No-Background.png"} />
          <pre>
            Career & Business
          </pre>
        </label>
        <label>
          <img className='pic-8' src={"http://i.kinja-img.com/gawker-media/image/upload/s--tgQAbik9--/vdj8mhwn5kgsn5gmwnl5.png"} />
          <pre>
            Food & Drinks
          </pre>
        </label>
      </section>
    </div>
  </div>
);

export default WelcomePage;
