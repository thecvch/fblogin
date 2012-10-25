class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  attr_accessible :email, :name, :password, :password_confirmation, :remember_me, :provider, :uid
  has_many :authorizations, :dependent => :destroy

end
