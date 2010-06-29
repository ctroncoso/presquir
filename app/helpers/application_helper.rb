# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def make_options(elements)
    list = []
    elements.each {|element|
      list << "<option>#{element}</option>"
    }
    list.join
  end

end

