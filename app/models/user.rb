class User < ApplicationRecord
  has_secure_password

  has_many :notes

  has_many :shares, :through => :notes
end
