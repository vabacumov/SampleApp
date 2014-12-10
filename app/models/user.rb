class User < ActiveRecord::Base
  validates :email, presence: true
  has_secure_password
  
  has_many :permissions
  
  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
end
