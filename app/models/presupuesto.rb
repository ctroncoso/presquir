class Presupuesto < ActiveRecord::Base
#  attr_accessible :fecha_emision,
#            :fecha_inicio_gestion,
#            :ejecutiva_id,
#            :plazo_gestion,
#            :user_id,
#            :cartera_empresa,
#            :pending
  belongs_to :user
  belongs_to :paciente
  belongs_to :cartera

  named_scope :pendientes, :conditions => {:pending => true}
  accepts_nested_attributes_for :paciente

  def cartera_empresa
      cartera.empresa if cartera
  end

  def cartera_empresa=(empresa)
    self.cartera = Cartera.find_or_create_by_empresa(empresa) unless empresa.blank?
  end

  def ejecutiva_nombre_completo
    user.nombre_completo
  end

  def deadline
    fecha_inicio_gestion + plazo_gestion.days
  end

end

