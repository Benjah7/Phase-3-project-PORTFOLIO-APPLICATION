class User < ActiveRecord::Base
    has_many :projects, dependent: :destroy
    has_many :skills, dependent: :destroy
  
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
  end
  