class User < ActiveRecord::Base
  attr_accessible :name, :email, :password_hash
  validates :email, format: { with: /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/, message: "email must be valid" }
end