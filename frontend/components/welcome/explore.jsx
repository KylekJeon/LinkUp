import React from 'react';
import { Link } from 'react-router';
import { createParagraphs } from './../../util/text_style_util';

class Explore extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      category: ""
    };
  }

  componentDidMount(){
    const category = this.props.routeParams.category.split("_").join(" ").replace("&", "_");
    this.props.fetchCategoryGroups(category);
    this.setState({ category: this.props.routeParams.category.split("_").join(" ")});
  }

  render() {

    let exploreClassName = "explore-page ";
    const categoryName = this.props.routeParams.category;
    switch(categoryName){
      case "sports":
        exploreClassName = exploreClassName + "sports";
        break;
      case "music":
        exploreClassName = exploreClassName + "music";
        break;
      case "health_&_fitness":
        exploreClassName = exploreClassName + "health";
        break;
      case "outdoor_adventures":
        exploreClassName = exploreClassName + "outdoor";
        break;
      case "arts":
        exploreClassName = exploreClassName + "arts";
        break;
      case "social":
        exploreClassName= exploreClassName + "social";
        break;
      case "career_&_business":
        exploreClassName = exploreClassName + "business";
        break;
      case "food_&_drinks":
        exploreClassName = exploreClassName + "food";
        break;
    }

    let exploreList;
    if(this.props.categoryGroups.length > 0){
      exploreList = this.props.categoryGroups.map((group) => (
        <Link to='/welcome/signup'><li key={group.id}><h1>{group.name}</h1>{createParagraphs(group.description)}</li></Link>
      ));
    }



    return (
      <section className={exploreClassName}>
          <h1 className='explore-page-header'>Welcome To LinkUp! These LinkUps Fall Under The Category Of<br/><div className='explore-header-category'>{this.state.category}</div></h1>
        <section className='explore-page-container'>
          <ul className='explore-page-list'>
            {exploreList}
          </ul>
        </section>
      </section>
    );
  }
}

export default Explore;
