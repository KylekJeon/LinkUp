# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  first_name      :string           not null
#  last_name       :string           not null
#

class User < ActiveRecord::Base
  after_initialize :ensure_session_token

  validates :username, :email, :password_digest, :session_token, :first_name, :last_name, presence: true
  validates :password, length: { minimum: 6 }, allow_nil: true
  attr_reader :password

  has_many :memberships
  has_many :groups, through: :memberships, source: :group
  has_many :rsvps
  has_many :events, through: :rsvps, source: :event


  has_attached_file :profile_photo, styles: {
    big: "600x600>",
    small: "50x50#"
  }
  validates_attachment_content_type(
    :profile_photo,
    content_type: /\Aimage\/.*\Z/
  )

  def self.generate_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    user && user.is_password?(password) ? user : nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save
    self.session_token
  end


  private
  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end


end
