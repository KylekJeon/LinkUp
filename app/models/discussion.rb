# == Schema Information
#
# Table name: discussions
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  group_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Discussion < ActiveRecord::Base

  validates :title, :group_id, presence: true

  belongs_to :group
  has_many :comments

end
