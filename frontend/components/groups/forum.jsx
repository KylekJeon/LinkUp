import React from 'react';
import { Link } from 'react-router';

class Forum extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      visible: false,
      title: "",
      selected: "",
      comment: ""
    };
    this.changeVisible = this.changeVisible.bind(this);
    this.updateTitle = this.updateTitle.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleclick = this.handleClick.bind(this);
    this.submitComment = this.submitComment.bind(this);
    this.updateComment = this.updateComment.bind(this);
  }

  componentDidMount(){
    this.props.fetchGroupDiscussions(this.props.params.groupId);
  }

  handleClick(idx){
    const selectedIdx = this.state.selected;
    return (e) => {
      e.preventDefault();
      if(idx === selectedIdx){
        this.setState({ selected: "", comment: "" });
      } else {
        this.setState({ selected: idx, comment: "" });
      }
    };
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.createDiscussion(this.props.params.groupId, this.state.title);
    this.setState({ title: "", visible: false });
  }

  submitComment(discussionId){
    const comment = this.state.comment;
    const createComment = this.props.createComment;
    const that = this;
    return e => {
      that.setState({ comment: "" });
      this.props.createComment(discussionId, comment);
    };
  }

  updateComment(e){
    e.preventDefault();
    this.setState({ comment: e.currentTarget.value });
  }

  updateTitle(e){
    e.preventDefault();
    this.setState({ title: e.currentTarget.value });
  }

  changeVisible(e){
    e.preventDefault();
    if(this.state.visible){
      this.setState({ visible: false });
    } else {
      this.setState({ visible: true });
    }
  }

  makeComments(comments, discussionId){
    const commentsList = comments.map((comment, idx) => (
      <li key={comment.id} className='forum-comments-item group'>
        <div  key={comment.id} className='forum-comments-item-header group'>
          <img className='forum-profile-photo' src={comment.user_image_url}/>
          <h2>{comment.user_first_name} {comment.user_last_name}</h2>
          <div>{comment.time}</div>
        </div>
        <p>{comment.body}</p>
      </li>
    ));
    return commentsList;
  }


  render() {
    let discussionList = [];
    if(this.props.discussions.length > 0){
      const discussions = this.props.discussions;
      for(let i = 0; i < this.props.discussions.length; i++){
        if(this.state.selected === i){
          discussionList.push(<div key={i}><li onClick={this.handleclick(i)} key={i} className="forum-discussion-item group active-discussion">
            <div key={discussions[i].id}>Posted {discussions[i].time}</div>
            <h1>{discussions[i].title}</h1>
            <ul className='forum-comment-list'>
              {this.makeComments(discussions[i].comments, discussions[i].id)}
            </ul>
          </li>
          <label className='forum-comment-box group'>
            <input type='text' className='comment-input' onChange={this.updateComment} value={this.state.comment}/>
            <button className='comment-submit' onClick={this.submitComment(discussions[i].id)}>Submit</button>
          </label>
          </div>);
        } else {
          discussionList.push(<li onClick={this.handleClick(i)} key={i} className="forum-discussion-item group">
            <div key={discussions[i].id}>Posted {discussions[i].time}</div>
            <h1>{discussions[i].title}</h1>
            </li>);
        }
      }
    }

    let createFormClass = "discussion-form ";
    if(this.state.visible){
      createFormClass = createFormClass + "discussion-visible";
    }

    let errors;

    if(this.props.errors.length > 0){
      errors = this.props.errors.map((error, idx) => (
        <li key={idx}>{error}</li>
      ));
    }

    return(
      <section className='forum-page'>
        <div className={createFormClass}>
          <label>What Do You Want To Discuss?
          <input type="text" onChange={this.updateTitle} className='forum-discussion-input' value={this.state.title}/>
          <button className='forum-submit' onClick={this.handleSubmit}>Submit</button>
          </label>
        </div>
        <button className='forum-create' onClick={this.changeVisible}>Create Discussion</button>
        <ul className='forum-errors'>
        {errors}
        </ul>
        <section className='forum-page-container'>
          <ul className="forum-discussion-list">
            {discussionList}
          </ul>
        </section>
      </section>
    );
  }

}


export default Forum;
