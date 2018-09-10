module ApplicationHelper
  def active_link_to(name = nil, route = nil, html_options = nil, &block)
    active_class = html_options[:active] || "is-active"
    html_options.delete(:active)
    html_options[:class] = "#{html_options[:class]} #{active_class}" if current_page?(route)
    link_to(name, route, html_options, &block)
  end
end
