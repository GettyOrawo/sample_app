class User < ActiveRecord::Base
validates :name, presence: true, lenth: { maximum:50 }
validates :email, presence: true, length: {maximum:255 }
end