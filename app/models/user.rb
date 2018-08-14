class User < ApplicationRecord
  validates :email, :password, :password_confirmation, presence: :true
  validates :email, format: { with: /\A[a-z]([\.\-\+]?\w+)+@[a-z]([\.\-]?\w+){2,}\Z/ }  

  has_secure_password
end
