class User < ApplicationRecord
  has_one_attached :image
  has_many :images
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  acts_as_messageable

  def mailboxer_email(object)
    puts object
  end
end
