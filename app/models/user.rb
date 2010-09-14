class User < ActiveRecord::Base
#  attr_accessible :rut, :nombre, :apellido_materno, :apellido_paterno, :fecha_contratacion
  has_many :presupuestos, :dependent => :destroy
  acts_as_authentic

  def nombre_completo
    [nombre, apellido_paterno, apellido_materno].join(" ") 
  end
  def nombre_completo=(nombre)
    split = nombre.split(" ", 3)
    self.nombre = split[0]
    self.apellido_paterno = split[1]
    self.apellido_materno = split[2]
  end
end

