# Methods added to this helper will be available to all templates in the application.
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
end
