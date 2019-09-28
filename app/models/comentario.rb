class Comentario < ApplicationRecord
  belongs_to :imagen
  belongs_to :user
end
