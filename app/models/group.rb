# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category    :string
#

class Group < ActiveRecord::Base
  include PgSearch

  validates :name, :description, presence: true
  validates :description, length: { minimum: 1 }
  validates :category, inclusion: { in: ["sports", "music", "health & fitness", "outdoor adventures", "arts", "social", "career & business", "food & drinks"] }

  has_many :memberships
  has_many :users, through: :memberships, source: :user
  has_many :events
  has_many :admins
  has_many :administrators, through: :admins, source: :user
  has_many :discussions



  pg_search_scope :search_group, against: [:name, :description, :category], using: {
    tsearch: {prefix: true, dictionary: "english", any_word: true}
  }

end
