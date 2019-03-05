require 'openssl'

class User < ApplicationRecord
  ITERATIONS = 20000
  DIGEST = OpenSSL::Digest::SHA256.new

  has_many :question

  validates :username, length: {maximum: 40}, uniqueness: true
  validates :username, presence: true,  format: {with: /\A[a-zA-Z0-9_.-]+\z/}
  validates :email, presence: true, format: {with: /\A[\w-]+@([\w-]+\.)+[\w-]+\z/}, uniqueness: true
  # validates :email, uniqueness: {case_sensitive: false}

  before_save {self.username = username.downcase}

      attr_accessor :password

  validates_presence_of :password, on: :create
  validates_confirmation_of :password
  before_save :encrypt_password

  def encrypt_password
    if self.password.present?
      self.password_salt = User.hash_to_string(OpenSSL::Random.random_bytes(16))
      self.password_hash = User.hash_to_string(
          OpenSSL::PKCS5.pbkdf2_hmac(self.password, self.password_salt, ITERATIONS, DIGEST.length, DIGEST)

      )
    end
  end

  def self.hash_to_string(password_hash)
    password_hash.unpack('H*')[0]
  end

  def self.authenticate(email, password)
    user = find_by(email: email)
    if user.present? && user.password_hash == User.hash_to_string(OpenSSL::PKCS5.pbkdf2_hmac(password, user
                                                                                                           .password_salt, ITERATIONS, DIGEST.length, DIGEST))
      user
    else
      nil
    end
  end
end
