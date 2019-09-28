class Evento < ApplicationRecord
    has_many :imagens
    has_many :eventousers
    has_many :users, through: :eventousers
end
