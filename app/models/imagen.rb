class Imagen < ApplicationRecord
    belongs_to :evento
    belongs_to :user
    has_many :comentarios
end
