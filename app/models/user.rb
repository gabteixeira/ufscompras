class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :nome, :sobrenome,:ra, message: 'não pode ser deixado em branco'
  validates_uniqueness_of :ra, message: 'Já existe um cadastro com esse RA'
  validates_presence_of :image, message:'^ Você deve possuir uma imagem'

  mount_uploader :image, ImageUploader
  has_many :comments
  acts_as_voter

end
