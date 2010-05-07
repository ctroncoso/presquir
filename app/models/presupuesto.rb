class Presupuesto < ActiveRecord::Base
  attr_accessible :fecha_emision, :fecha_inicio_gestion, :ejecutiva_id, :plazo_gestion
  belongs_to :user
  has_one :paciente
end

