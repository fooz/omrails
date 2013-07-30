class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
          :rememberable, :trackable, :validatable
  # attr_accessible :title, :body
  # MassAssignmentSecurity Error fix
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :provider, :uid, :as => [:default, :admin]
  # Makes sure all users have names
  # validates_presence_of :name
  # validates_uniqueness_of :name

has_many :pins, :dependent => :destroy
end
