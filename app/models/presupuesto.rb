class Presupuesto < ActiveRecord::Base

  belongs_to :user
  belongs_to :paciente
  belongs_to :cartera
  belongs_to :prevision
  has_one :intencion
  has_many :seguimientos
  has_many :itemizacions
  has_many :fonasa_mles, :through => :itemizacions
  accepts_nested_attributes_for :paciente, :prevision, :intencion

  named_scope :pendientes, :conditions => {:estado => 0}

  validates_presence_of :fecha_emision

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
    fecha_inicio_gestion + plazo_gestion.days if fecha_inicio_gestion
  end

  def pendiente
    estado.nil? || estado == 0
  end
end

