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
  validates :name, :event_time, :location, :description, presence: true;
  validates :description, length: { minimum: 1 }

  has_many :rsvps
  has_many :users, through: :rsvps, source: :user
  belongs_to :group

end
