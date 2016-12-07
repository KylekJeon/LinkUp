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
  validates :name, :description, presence: true;
  validates :description, length: { minimum: 10 }


end
