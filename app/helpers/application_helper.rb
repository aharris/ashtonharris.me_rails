module ApplicationHelper
  
  def link_to_with_current_class(name, path)
    if path == request.path or (path == "/all_work" and request.path.include? "/work/")
      content_tag :li, link_to(name, path, :class => name), :class => "current"
    else
      content_tag :li, link_to(name, path, :class => name)
    end   
  end
  
end
