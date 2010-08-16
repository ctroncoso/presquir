class Prevision < ActiveRecord::Base
  attr_accessible :name, :isapre
  has_many :presupuestos
end

