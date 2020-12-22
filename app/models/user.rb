class User < ApplicationRecord
  acts_as_voter
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save {self.email = email.downcase}
  before_create :create_remember_token
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, length: {minimum: 6}
  has_secure_password

  has_many :posts, dependent: :destroy
  has_many :subscribes, :dependent => :destroy
  has_many :channels, through: :subscribes, source: :channel

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed
    posts
  end

  def subscribing?(channel)
    subscribes.find_by(channel_id: channel.id )
  end

  private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end