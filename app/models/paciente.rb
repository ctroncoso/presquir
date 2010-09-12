class Paciente < ActiveRecord::Base
#  attr_accessible :ficha, :rut, :fono_fijo, :celular, :mail, :tipo_paciente_id, :nombre, :apellido_paterno, :apellido_materno
    has_many :presupuestos
    validates_presence_of :nombre, :apellido_paterno, :apellido_materno, :rut
    def nombre_completo
        [nombre, apellido_paterno, apellido_materno].join(" ")
    end
end

