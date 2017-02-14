import React from 'react';


class GroupEdit extends React.Component {
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
    this.props.editGroup(this.props.currentGroup.id, this.state).then( () => {
      this.props.router.push(`/groups/${this.props.currentGroup.id}`);
    });
  }

  componentWillReceiveProps(nextProps){
    if(nextProps.route.path.includes("edit")){
      this.setState({ name: nextProps.currentGroup.name, description: nextProps.currentGroup.description, category: nextProps.currentGroup.category});
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
      <section className='group-edit-page group'>
        <h1 className='group-edit-page-header'>Edit Your LinkUp, Make It Better</h1>
        <section className='group-edit-page-container'>
          <form className='group-edit-form group'>
            <div className='group-edit-text'>
              <ul className='group-edit-errors'>
                {errors}
              </ul>
              <label className='group-edit-text-label'><span>Change Your LinkUp Name</span>
                <br/>
                <input className='group-edit-name' type='text' onChange={this.update("name")} value={this.state.name} />
              </label>
              <br/>
              <label className='group-edit-text-label'><span>Change What Your LinkUp Is About</span>
                <br/>
                <textarea className='group-edit-description' onChange={this.update("description")} value={this.state.description} />
              </label>
              <button className='group-edit-submit' onClick={this.handleSubmit}>Change Your LinkUp</button>
            </div>
            <div className='group-edit-category group'>
              <h3>Change Your LinkUp Category</h3>
              <h4>Your LinkUp's New Category is: <span>{this.state.category}</span></h4>
              <ul className='group-edit-category-list group'>
                <li onClick={this.changeCategory("sports")} key={1}>sports
                  <img className='pic-1 group-edit-pic' src={window.assets.sportsImage} />
                </li>
                <li onClick={this.changeCategory("music")} key={2}>music
                  <img className='pic-2 group-edit-pic' src={window.assets.smallMusicImage} />
                </li>
                <li onClick={this.changeCategory("health & fitness")} key={3}>health & fitness
                  <img className='pic-3 group-edit-pic' src={window.assets.healthImage} />
                </li>
                <li onClick={this.changeCategory("outdoor adventures")} key={4}>outdoor adventures
                  <img className='pic-4 group-edit-pic' src={window.assets.smallOutdoorImage} />
                </li>
                <li onClick={this.changeCategory("arts")} key={5}>arts
                  <img className='pic-5 group-edit-pic' src={window.assets.smallArtsImage} />
                </li>
                <li onClick={this.changeCategory("social")} key={6}>social
                  <img className='pic-6 group-edit-pic' src={window.assets.smallSocialImage} />
                </li>
                <li onClick={this.changeCategory("career & business")} key={7}>career & business
                  <img className='pic-7 group-edit-pic' src={window.assets.businessImage} />
                </li>
                <li onClick={this.changeCategory("food & drinks")} key={8}>food & drinks
                  <img className='pic-8 group-edit-pic' src={window.assets.smallFoodImage} />
                </li>
              </ul>
            </div>
          </form>
        </section>
      </section>
    );
  }

}

export default GroupEdit;
