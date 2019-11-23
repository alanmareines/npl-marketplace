class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :npls
  has_many :bids
  has_many :messages

  validates :name, :cpf_cnpj, :phone, presence: true
end
