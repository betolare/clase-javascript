class Tarea < ApplicationRecord
	 belongs_to :usuario #una tarea va a pertenecer a un usuario
     validates :titulo, presence: true
     validates :descripcion, presence: true
     has_many :comentarios
     has_many :comentarios, dependent: :destroy
end
