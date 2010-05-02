class Ejecutiva < ActiveRecord::Base
  attr_accessible :rut, :nombre, :apellido_materno, :apellido_paterno, :fecha_contratacion
  has_many :presupuestos
  def nombre_completo
    [nombre, apellido_paterno, apellido_materno].join(" ")
  end
end
