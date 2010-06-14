class Cartera < ActiveRecord::Base
  has_many :presupuestos
  attr_accessible :codigo,
                  :empresa,
                  :rut,
                  :holding,
                  :agencia,
                  :contacto,
                  :cargo,
                  :telefono,
                  :telefono_celular,
                  :direccion,
                  :comuna,
                  :referencia_dir,
                  :estado,
                  :cartera,
                  :afiliada
end

