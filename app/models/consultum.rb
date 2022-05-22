class Consultum < ApplicationRecord
    belongs_to :receta
    belongs_to :orden
    belongs_to :usuarion 
end
