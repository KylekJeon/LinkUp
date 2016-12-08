# == Schema Information
#
# Table name: rsvps
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  event_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rsvp < ActiveRecord::Base

  validates :user_id, :event_id, presence: true

  belongs_to :user
  belongs_to :event

end
