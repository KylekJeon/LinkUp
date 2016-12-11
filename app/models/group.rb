# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ActiveRecord::Base
  include PgSearch

  validates :name, :description, presence: true;
  validates :description, length: { minimum: 1 }

  has_many :memberships
  has_many :users, through: :memberships, source: :user
  has_many :events

  pg_search_scope :search_group, against: [:name, :description], using: {
    tsearch: {prefix: true, dictionary: "english", any_word: true}
  }

end
