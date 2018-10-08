class Tarea < ApplicationRecord
	 belongs_to :usuario #una tarea va a pertenecer a un usuario
     validates :titulo, presence: true
     validates :descripcion, presence: true
end
