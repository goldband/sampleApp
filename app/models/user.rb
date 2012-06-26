# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
<<<<<<< HEAD
    attr_accessible :name, :email, :password, :password_confirmation
    has_secure_password
    has_many :microposts
=======
  attr_accessible :name, :email, :password, :password_confirmation

  has_secure_password
>>>>>>> sign-up

    before_save { |user| user.email = email.downcase }

    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence:   true,
             format:     { with: VALID_EMAIL_REGEX },
             uniqueness: { case_sensitive: false }
     validates :password, presence: true, length: { minimum: 6 }
     validates :password_confirmation, presence: true

<<<<<<< HEAD
=======
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
          format:     { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
>>>>>>> sign-up
end
