class Owner < ApplicationRecord
    has_one :store # , foreign_key : "u_id" (incase you need it)
end
