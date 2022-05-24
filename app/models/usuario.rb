class Usuario < ApplicationRecord
    #belongs_to :historium
    has_one :historium
end
