class User < ApplicationRecord
  # has_one :quiz_years, dependent: :destroy
  has_secure_password
  validates :name, {uniqueness:true,presence:true,length:{ minimum: 4 }}
  validates :password, length:{ minimum: 4 }
end
