class Itemizacion < ActiveRecord::Base
    belongs_to :presupuesto
    belongs_to :fonasa_mle
end

