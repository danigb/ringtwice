# Methods added to this helper will be available to all mail_templates in the application.
module ApplicationHelper

  def title(label)
    "<h1>#{label}</h1>"
  end

  def submit_label(model)
    model.new_record? ? :create : :update
  end

  def breadcrums(model = nil)
    result = '<div class="breadcrums">'
    result << link_to(I18n.t(:all_projects), projects_path)
    if model
      model.path.each do |parent|
        result << ' '
        result << link_to(parent.name, parent.path)
      end
    end
    result << '</div>'
  end

  def group_div(name, options, &block)
    concat content_tag(:div, capture(&block), options.merge(:id => name)), block.binding
  end

  def nice_list(name, collection, method, options = {})
    options[:class] ||= ''
    options[:class] = "nice_list #{options[:class]}"
    list = ''
    collection.each {|c| list << content_tag(:li, 
        link_to(c.send(method).to_s, c.path))}
    
    content_tag(:div,
      content_tag(:h2, t(name)) +
      content_tag(:ul, list), options.merge(:id => name))
  end
end
