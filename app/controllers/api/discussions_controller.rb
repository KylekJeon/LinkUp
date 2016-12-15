class Api::DiscussionsController < ApplicationController


  def comment
    @discussion = Discussion.find(params[:discussion_id])
    @comment = Comment.new(user: current_user, discussion: @discussion)
    @comment.body = params[:comment]
    if @comment.save
      @group = Group.find(@discussion.group_id)
      @discussions = @group.discussions
      render 'api/discussions/index'
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

end
