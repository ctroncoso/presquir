module PresupuestosHelper
  def plazos(elements=[30,45])
    list = []
    elements.each {|element|
      list << "<option>#{element}</option>"
    }
    list.join
  end
end
