import React from 'react';

class linkUpForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      name: "",
      description: "",
      category: ""
    };
    this.update = this.update.bind(this);
    this.changeCategory = this.changeCategory.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.createGroup(this.state);
  }

  componentWillReceiveProps(nextProps){
    if (nextProps.currentGroup.name === this.state.name){
      nextProps.router.push(`groups/${nextProps.currentGroup.id}`);
    }
  }

  update(prop){
    return e => {
      e.preventDefault();
      this.setState({ [prop]: e.currentTarget.value });
    };
  }

  changeCategory(prop){
    return e => {
      e.preventDefault();
      this.setState({ category: prop });
    };
  }

  render() {

    let errors = [];
    this.props.errors.forEach((error, idx) => {
      const li = <li key={idx}>{error}</li>;
      errors.push(li);
    });


    return (
      <section className='linkup-page'>
        <h1 className='linkup-page-header'>Create a LinkUp, Bring People Together</h1>
        <section className='linkup-page-container'>
          <form className='linkup-form group'>
            <div className='linkup-text'>
              <ul className='linkup-errors'>
                {errors}
              </ul>
              <label className='linkup-text-label'>What's Your LinkUp Called?
                <br/>
                <input className='linkup-name' type='text' onChange={this.update("name")} value={this.state.name} />
              </label>
              <br/>
              <label className='linkup-text-label'>What's Your LinkUp About?
                <br/>
                <textarea className='linkup-description' onChange={this.update("description")} value={this.state.description} />
              </label>
              <button className='linkup-submit' onClick={this.handleSubmit}>Create Your LinkUp</button>
            </div>
            <div className='linkup-category group'>
              <h3>What Category Does Your LinkUp Belong To?</h3>
              <h4>Your LinkUp Category is: {this.state.category}</h4>
              <ul className='linkup-category-list group'>
                <li onClick={this.changeCategory("sports")} key={1}>sports
                  <img className='pic-1 linkup-pic' src={window.assets.sportsImage} />
                </li>
                <li onClick={this.changeCategory("music")} key={2}>music
                  <img className='pic-2 linkup-pic' src={window.assets.smallMusicImage} />
                </li>
                <li onClick={this.changeCategory("health & fitness")} key={3}>health & fitness
                  <img className='pic-3 linkup-pic' src={window.assets.healthImage} />
                </li>
                <li onClick={this.changeCategory("outdoor adventures")} key={4}>outdoor adventures
                  <img className='pic-4 linkup-pic' src={window.assets.smallOutdoorImage} />
                </li>
                <li onClick={this.changeCategory("arts")} key={5}>arts
                  <img className='pic-5 linkup-pic' src={window.assets.smallArtsImage} />
                </li>
                <li onClick={this.changeCategory("social")} key={6}>social
                  <img className='pic-6 linkup-pic' src={window.assets.smallSocialImage} />
                </li>
                <li onClick={this.changeCategory("career & business")} key={7}>career & business
                  <img className='pic-7 linkup-pic' src={window.assets.businessImage} />
                </li>
                <li onClick={this.changeCategory("food & drinks")} key={8}>food & drinks
                  <img className='pic-8 linkup-pic' src={window.assets.smallFoodImage} />
                </li>
              </ul>
            </div>
          </form>
        </section>
      </section>
    );

  }

}

export default linkUpForm;
