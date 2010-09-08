class Intencion < ActiveRecord::Base
 # attr_accessible :presupuesto_id, :intencion, :principal, :atencion, :recomendacion, :confianza_hts, :confianza_medico, :precio, :isapre, :seguro_comp, :convenio
 belongs_to :presupuesto
end
