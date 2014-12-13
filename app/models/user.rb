class User < ActiveRecord::Base
  validates :email, presence: true
  has_secure_password
  
  has_many :permissions
  has_many :comments
  
  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
end
