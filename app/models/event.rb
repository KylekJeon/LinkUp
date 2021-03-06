# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  event_time  :datetime         not null
#  location    :string           not null
#  description :text             not null
#  group_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  validates :name, :event_time, :location, :description, presence: true
  validates :description, length: { minimum: 1 }

  has_many :rsvps
  has_many :users, through: :rsvps, source: :user
  belongs_to :group


  def self.find_user_groups_events(user_id)
    groups = User.find(user_id).groups
    groups_id = groups.map { |group| group.id }
    events = Event.joins(:group).where("groups.id IN (?)", groups_id)
    events
  end


  def get_name
    name
  end
end
