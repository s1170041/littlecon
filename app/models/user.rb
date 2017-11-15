class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  # has_many :foot_prints, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_one :profile

end
