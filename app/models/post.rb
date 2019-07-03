class Post < ApplicationRecord
  belongs_to :user

  #validação de campos
  validates_presence_of :titulo, :contato,:conteudo,message: 'não pode ser deixado em branco'
  validates_presence_of :image, message:'^O anúncio deve possuir uma imagem'
  validates_length_of :titulo, in: 10..100, message: 'deve ter entre 10 e 100 caracteres'
  validates_numericality_of :contato, message: 'deve ser um número'

  mount_uploader :image, ImageUploader
  has_many :comments
  acts_as_votable
end
