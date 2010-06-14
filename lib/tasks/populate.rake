task :load_cartera => [:environment] do
  class Empresa < ActiveRecord::Base
    establish_connection(
      :adapter  => "mysql",
      :host     => "localhost",
      :username => "root",
      :password => "schmick0229",
      :database => "presquir"
    )
    set_table_name "cartera"
  end
  Cartera.destroy_all

  Empresa.all.each {|e|
    Cartera.create(e.attributes)
  }
end

