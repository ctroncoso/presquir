class FonasaMle < ActiveRecord::Base
  attr_accessible :codigo, :descripcion, :denominacion
  has_many :itemizacions
  has_many :presupuestos, :through => :itemizacions

end

