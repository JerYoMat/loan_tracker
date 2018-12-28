class User < ActiveRecord::Base
  has_many :payments
  has_many :loans, through: :payments
end
