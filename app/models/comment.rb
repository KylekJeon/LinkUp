# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  body          :string           not null
#  discussion_id :integer          not null
#  user_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Comment < ActiveRecord::Base

  validates :body, :discussion_id, :user_id, presence: true

  belongs_to :user
  belongs_to :discussion

end
