module ApplicationHelper
  
  def link_to_with_current_class(name, options)
      if current_page?(options)
      content_tag :li, link_to(h(name), options, :class => name), :class => "current"
    else
      content_tag :li, link_to(h(name), options, :class => name)
    end   
  end
  
end